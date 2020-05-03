package com.liangxin.qlmall_admin.commons.aspect;


import com.google.common.collect.ImmutableList;
import com.liangxin.qlmall_admin.commons.annotation.Limit;
import com.liangxin.qlmall_admin.commons.entity.LimitType;
import com.liangxin.qlmall_admin.commons.exception.LimitAccessException;
import com.liangxin.qlmall_admin.commons.utils.FebsUtil;
import com.liangxin.qlmall_admin.commons.utils.IPUtil;
import com.liangxin.qlmall_admin.monitor.controller.LoginLogController;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.script.DefaultRedisScript;
import org.springframework.data.redis.core.script.RedisScript;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.Objects;


/**
 * 接口限流
 *
 * @author NKW
 */
@Slf4j
@Aspect
@Component
public class LimitAspect {


    private final RedisTemplate<String, Serializable> limitRedisTemplate;

    @Autowired
    public LimitAspect(RedisTemplate<String, Serializable> limitRedisTemplate) {
        this.limitRedisTemplate = limitRedisTemplate;
    }

    @Pointcut("@annotation(com.liangxin.qlmall_admin.commons.annotation.Limit)")
    public void pointcut() {
        // do nothing
    }

    @Around("pointcut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        HttpServletRequest request = ((ServletRequestAttributes) Objects.requireNonNull(RequestContextHolder.getRequestAttributes())).getRequest();
        HttpServletResponse response = ((ServletRequestAttributes) Objects.requireNonNull(RequestContextHolder.getRequestAttributes())).getResponse();

        MethodSignature signature = (MethodSignature) point.getSignature();
        Method method = signature.getMethod();
        Limit limitAnnotation = method.getAnnotation(Limit.class);
        LimitType limitType = limitAnnotation.limitType();
        String name = limitAnnotation.name();
        String key;
        String ip = IPUtil.getIpAddr(request);
        int limitPeriod = limitAnnotation.period();
        int limitCount = limitAnnotation.count();
        switch (limitType) {
            case IP:
                key = ip;
                break;
            case CUSTOMER:
                key = limitAnnotation.key();
                break;
            default:
                key = StringUtils.upperCase(method.getName());
        }
        ImmutableList<String> keys = ImmutableList.of(StringUtils.join(limitAnnotation.prefix() + "_", key, ip));
        String luaScript = buildLuaScript();
        RedisScript<Number> redisScript = new DefaultRedisScript<>(luaScript, Number.class);
        Number count = limitRedisTemplate.execute(redisScript, keys, limitCount, limitPeriod);
        log.info("IP:{} 第 {} 次访问key为 {}，描述为 [{}] 的接口", ip, count, keys, name);
        if (count != null && count.intValue() <= limitCount) {
            return point.proceed();
        } else {
            if (FebsUtil.isAjaxRequest(request)) {
                throw new LimitAccessException("你已多次登录失败，IP暂时被封禁，请稍后再试");
            } else {
                response.setStatus(405);
            }
            return null;
        }
    }

    /**
     * 限流脚本
     * 调用的时候不超过阈值，则直接返回并执行计算器自加。
     *
     * @return lua脚本
     */
    private String buildLuaScript() {
        return "local c" +
                "\n local flag=true" +
                "\n c = redis.call('get',KEYS[1])" +
                "\n    if c and tonumber(c) > tonumber(ARGV[1]) then" +
                "\n         return c;" +
                "\n     end" +
                "\n         c = redis.call('incr',KEYS[1])" +
                "\n        if tonumber(c) == 1 then" +
                "\n           redis.call('expire',KEYS[1],ARGV[2])" +
                "\n         end" +
                "\n            return c;";
    }
}
