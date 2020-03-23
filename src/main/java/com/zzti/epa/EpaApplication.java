package com.zzti.epa;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.zzti.epa.mapper")
public class EpaApplication {

    public static void main(String[] args) {
        SpringApplication.run(EpaApplication.class, args);
    }

}
