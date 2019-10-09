package com.litmus7.shopmate.order.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(HttpStatus.NOT_FOUND)
public class OrderIdNotFound extends RuntimeException {
	public OrderIdNotFound(String message) {
		super(message);
	}
	

}
