package com.liangxin.qlmall_portal.commons.function;


import com.liangxin.qlmall_portal.commons.exception.RedisConnectException;

/**
 * @author MrBird
 */
@FunctionalInterface
public interface JedisExecutor<T, R> {
    R excute(T t) throws RedisConnectException;
}
