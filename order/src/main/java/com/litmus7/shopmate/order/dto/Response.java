package com.litmus7.shopmate.order.dto;

public class Response {
	
	private String status;
	private String Message;
	private Object payload;
	
	public Response() {
		
	}
	public Response(String status, String message, Object payload) {
		super();
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

	public Object getPayload() {
		return payload;
	}

	public void setPayload(Object payload) {
		this.payload = payload;
	}
	
	
	
}