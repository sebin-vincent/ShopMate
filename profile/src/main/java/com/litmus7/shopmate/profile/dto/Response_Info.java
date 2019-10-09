package com.litmus7.shopmate.profile.dto;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Response_Info {
	
	private int status_Code;
	private String status_Message;
	private List<Object> payload;
	
	public int getStatus_Code() {
		return status_Code;
	}
	public void setStatus_Code(int status_Code) {
		this.status_Code = status_Code;
	}
	public String getStatus_Message() {
		return status_Message;
	}
	public void setStatus_Message(String status_Message) {
		this.status_Message = status_Message;
	}
	public List<Object> getPayload() {
		return payload;
	}
	public void setPayload(List<Object> payload) {
		this.payload = payload;
	}

}
