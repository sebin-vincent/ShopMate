package com.litmus7.shopmate.order.dto;

import javax.persistence.Entity;

@Entity
public class Payment {
	private int paymentMethodId;
	private String paymentMethod;
	
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getPaymentMethodId() {
		return paymentMethodId;
	}
	public void setPaymentMethodId(int paymentMethodId) {
		this.paymentMethodId = paymentMethodId;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	
	
	

}
