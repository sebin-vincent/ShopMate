package com.litmus7.shopmate.order.dto;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Response {

	private int status;
	private Object payload;
	private String Message;

	public Response() {

	}

	public Response(int status, String message, List<Object> payload) {
		this.status = status;
		Message = message;
		this.payload = payload;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}

	public Object getPayload() {
		return payload;
	}

	public void setPayload(Object payload) {
		this.payload = payload;
	}

}