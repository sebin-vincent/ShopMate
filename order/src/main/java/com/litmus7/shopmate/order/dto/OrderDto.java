package com.litmus7.shopmate.order.dto;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "manager")
public class OrderDto {
	@Id
	@Column(name = "order_id")
	private int orderId;
	@Column(name = "profile_id")
	private int profileId;
	@Column(name = "address_id")
	private int addressId;
	@Column(name = "shipping_method_id")
	private int shippingMethodId;
	@Column(name = "payment_method_id")
	private int paymentMethodId;
	@Column(name = "total_amount")
	private int totalAmount;
	@Column(name = "status_id")
	private int orderStatusId;
	@Column(name = "delivery_date")
	private Date deliveryDate;


	@OneToMany(mappedBy = "orderId")
	private List<ItemDto> item;

	public List<ItemDto> getItem() {
		return item;
	}

	public void setItem(List<ItemDto> item) {
		this.item = item;
	}

	public OrderDto() {
		super();
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getProfileId() {
		return profileId;
	}

	public void setProfileId(int profileId) {
		this.profileId = profileId;
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public int getShippingMethodId() {
		return shippingMethodId;
	}

	public void setShippingMethodId(int shippingMethodId) {
		this.shippingMethodId = shippingMethodId;
	}

	public int getPaymentMethodId() {
		return paymentMethodId;
	}

	public void setPaymentMethodId(int paymentMethodId) {
		this.paymentMethodId = paymentMethodId;
	}

	public long getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public int getOrderStatusId() {
		return orderStatusId;
	}

	public void setOrderStatusId(int orderStatusId) {
		this.orderStatusId = orderStatusId;
	}

	public Date getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

}
