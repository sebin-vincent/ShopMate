package com.litmus7.shopmate.order.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order_payment_method")
public class Payment {
	@Id
	@Column(name = "payment_method_id")
	private int paymentMethodId;
	
	@Column(name = "payment_method")
	private String paymentMethod;
	
	public Payment() {
		
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
