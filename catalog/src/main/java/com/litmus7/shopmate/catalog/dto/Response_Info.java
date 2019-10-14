package com.litmus7.shopmate.catalog.dto;

import org.springframework.stereotype.Component;

@Component
public class Response_Info {
	
	private int status_Code=200;
	
	private String message="Ok";
	
	private Object payload;

	public int getStatus_Code() {
		return status_Code;
	}

	public void setStatus_Code(int status_Code) {
		this.status_Code = status_Code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getPayload() {
		return payload;
	}

	public void setPayload(Object payload) {
		this.payload = payload;
	}
	
	

}
