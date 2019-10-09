package com.litmus7.shopmate.order.dto;

<<<<<<< HEAD
public class Response {
	
	private String status;
	private String Message;
	private Object payload;
	
=======
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Response {

	private int status;
	private Object payload;
	private String Message;

>>>>>>> ccec1156c6f9ae4dcf06e20bc2a6d578d3ace73e
	public Response() {

	}
<<<<<<< HEAD
	public Response(String status, String message, Object payload) {
		super();
=======

	public Response(int status, String message, List<Object> payload) {
>>>>>>> ccec1156c6f9ae4dcf06e20bc2a6d578d3ace73e
		this.status = status;
		Message = message;
		this.payload = payload;
	}
<<<<<<< HEAD
	public String getStatus() {
=======

	public int getStatus() {
>>>>>>> ccec1156c6f9ae4dcf06e20bc2a6d578d3ace73e
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
<<<<<<< HEAD
	
	
	
=======

>>>>>>> ccec1156c6f9ae4dcf06e20bc2a6d578d3ace73e
}