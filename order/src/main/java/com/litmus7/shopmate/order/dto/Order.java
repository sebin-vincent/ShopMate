package com.litmus7.shopmate.order.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Order {
	@Id
	@Column(name = "order_id")
	private String orderId; 
	@Column(name = "profile_id")
	private String profileId;
	@Column(name = "address_id")
	private String addressId;
	@Column(name = "shipping_method_id")
	private String shippingMethodId;
	@Column(name = "payment_method_id")
	private String paymentMethodId;
	@Column(name = "total_amount")
	private long totalAmount;
	@Column(name = "order_status_id")
	private String orderStatusId;
	@Column(name = "delivery_date")
	private Date deliveryDate;

	public Order() {
		super();
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getProfileId() {
		return profileId;
	}
	public void setProfileId(String profileId) {
		this.profileId = profileId;
	}
	public String getAddressId() {
		return addressId;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public String getShippingMethodId() {
		return shippingMethodId;
	}
	public void setShippingMethodId(String shippingMethodId) {
		this.shippingMethodId = shippingMethodId;
	}
	public String getPaymentMethodId() {
		return paymentMethodId;
	}
	public void setPaymentMethodId(String paymentMethodId) {
		this.paymentMethodId = paymentMethodId;
	}
	public long getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(long totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getOrderStatusId() {
		return orderStatusId;
	}
	public void setOrderStatusId(String orderStatusId) {
		this.orderStatusId = orderStatusId;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	
	
	
	
	
	
	

}
