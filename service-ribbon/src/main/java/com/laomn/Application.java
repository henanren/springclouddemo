package com.laomn;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.Bean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@EnableCaching
@ServletComponentScan
// @SpringBootApplication(exclude = { MongoAutoConfiguration.class,
// MongoDataAutoConfiguration.class })
// @ImportResource(locations = { "classpath:config/redis.xml" })
@MapperScan("com.laomn.dao")
@EnableTransactionManagement
@SpringBootApplication
@RestController
@EnableDiscoveryClient //开启服务发现的能力
public class Application {
	private static final Logger logger = LoggerFactory.getLogger(Application.class);


	@Bean //定义REST客户端，RestTemplate实例
	@LoadBalanced//开启负债均衡的能力
	RestTemplate restTemplate() {
		return new RestTemplate();
	}


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
