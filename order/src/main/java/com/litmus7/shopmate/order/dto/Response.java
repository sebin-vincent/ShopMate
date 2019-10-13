package com.litmus7.shopmate.order.dto;
import org.springframework.stereotype.Component;

@Component
public class Response {

	private int status;
	private Object payload;
	private String Message;
	public Response() {
		super();
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Object getPayload() {
		return payload;
	}
	public void setPayload(Object payload) {
		this.payload = payload;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	
}