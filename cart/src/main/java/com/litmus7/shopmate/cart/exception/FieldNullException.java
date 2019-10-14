package com.litmus7.shopmate.cart.exception;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class FieldNullException extends RuntimeException {
	public FieldNullException(String message) {
		super(message);
	}
}
