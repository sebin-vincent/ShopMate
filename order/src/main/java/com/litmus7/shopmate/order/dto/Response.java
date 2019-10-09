package com.litmus7.shopmate.order.dto;

import java.util.List;

public class Response {
	
	private String status;
	private List<Object> payload;
	private String Message;
	
	public Response() {
		
	}
	
	public Response(String status, String message, List<Object> payload) {
		this.status = status;
		Message = message;
		this.payload = payload;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}

	public List<Object> getPayload() {
		return payload;
	}

	public void setPayload(List<Object> payload) {
		this.payload = payload;
	}
	
	
}