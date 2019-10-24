package com.litmus7.shopmate.order.feignclient;

import org.springframework.cloud.openfeign.FeignClient;

import feign.RequestLine;

@FeignClient(name = "inventory",url = "http://localhost:8080",configuration = ServiceInventoryClientConfig.class)
public interface ServiceInventoryClient {
	
	@RequestLine("GET /items/message")
	public String getMessage();

}
