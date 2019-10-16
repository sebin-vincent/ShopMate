package com.litmsu7.shopmate.order.feignclient;

import org.springframework.context.annotation.Bean;

import feign.Contract;

public class ServiceInventoryClientConfig {
	
	@Bean
	public Contract feignContract() {
		return new feign.Contract.Default();
	}
}
