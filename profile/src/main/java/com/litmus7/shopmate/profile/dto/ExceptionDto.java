package com.litmus7.shopmate.profile.dto;

import java.util.Date;

public class ExceptionDto {
	
	private Date timeStamp;
	private String message;
	private String discription;
	
	public ExceptionDto() {
		// TODO Auto-generated constructor stub
	}
	
	public ExceptionDto(Date date,String message,String discription) {
		this.timeStamp=date;
		this.message=message;
		this.discription=discription;
		
	}
	
	
	public Date getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Date timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	

}
