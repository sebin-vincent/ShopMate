package com.litmus7.shopmate.profile.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class NoShippingAddressFound extends RuntimeException {

	public NoShippingAddressFound(String message) {
			super(message);
	}
}
