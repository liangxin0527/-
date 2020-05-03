package com.liangxin.qlmall_admin.commons.function;


import com.liangxin.qlmall_admin.commons.exception.RedisConnectException;

/**
 */
@FunctionalInterface
public interface JedisExecutor<T, R> {
    R excute(T t) throws RedisConnectException;
}
