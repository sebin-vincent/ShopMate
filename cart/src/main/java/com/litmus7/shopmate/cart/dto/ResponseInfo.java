package com.litmus7.shopmate.cart.dto;

import org.springframework.stereotype.Component;

@Component
public class ResponseInfo {
	
	    private int statusCode;
	    private String message;
	    private Object payload;
	    

	    public ResponseInfo() {
			
		}

		public ResponseInfo(int statusCode, String message, Object payload) {
	        this.statusCode = statusCode;
	        this.message = message;
	        this.payload = payload;
	    }

	    public int getStatusCode() {
	        return statusCode;
	    }

	    public void setStatusCode(int statusCode) {
	        this.statusCode = statusCode;
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


