package com.litmus7.shopmate.order.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(HttpStatus.NOT_FOUND)
public class CartItemNotFound extends RuntimeException {
	public CartItemNotFound(String message) {
		super(message);
	}
	

}
