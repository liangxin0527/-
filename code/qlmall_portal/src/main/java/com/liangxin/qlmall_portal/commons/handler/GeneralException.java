package com.liangxin.qlmall_portal.commons.handler;

import com.liangxin.qlmall_portal.commons.exception.LoginException;
import com.liangxin.qlmall_portal.commons.utils.GeneralResultInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
@Order(Ordered.HIGHEST_PRECEDENCE)
@Slf4j
public class GeneralException {

    @ExceptionHandler(LoginException.class)
    public GeneralResultInfo loginException(LoginException e){
        log.error("登录失败",e);
        return new GeneralResultInfo().message(e.getMessage()).error();
    }
}
