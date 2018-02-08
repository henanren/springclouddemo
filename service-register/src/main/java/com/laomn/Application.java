package com.laomn;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@EnableCaching
@ServletComponentScan
// @SpringBootApplication(exclude = { MongoAutoConfiguration.class,
// MongoDataAutoConfiguration.class })
// @ImportResource(locations = { "classpath:config/redis.xml" })
@MapperScan("com.laomn.dao")
@EnableTransactionManagement
@SpringBootApplication
@RestController
@EnableEurekaServer //通过@EnableEurekaServer启动一个服务注册中心给其他应用使用
public class Application {
	private static final Logger logger = LoggerFactory.getLogger(Application.class);






	/**
	 *
	 * @param args
	 */
	public static void main(String[] args) {
		// System.setProperty("spring.devtools.restart.enabled", "true");
		// args =new
		// String[]{"--spring.profiles.active=prod --server.prt=8080"};
		SpringApplication.run(Application.class, args);

		logger.info("============= SpringBoot Start Success =============");
	}

}
