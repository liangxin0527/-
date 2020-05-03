package com.liangxin.qlmall_admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableAsync
@EnableTransactionManagement
@MapperScan("com.liangxin.qlmall_admin.*.mapper")
public class QlmallAdminApplication {

    public static void main(String[] args) {
        SpringApplication.run(QlmallAdminApplication.class, args);
    }

}
