package com.liangxin.qlmall_portal;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableAsync
@EnableTransactionManagement
@MapperScan({"com.liangxin.qlmall_portal.mapper","com.liangxin.qlmall_portal.sytem.mapper"})
@EnableCaching
public class QlmallPortalApplication {

    public static void main(String[] args) {
        SpringApplication.run(QlmallPortalApplication.class, args);
    }

}
