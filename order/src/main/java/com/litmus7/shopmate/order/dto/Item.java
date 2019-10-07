package com.litmus7.shopmate.order.dto;

import java.sql.Date;

import javax.persistence.Entity;
@Entity
public class Item {
	private String orderId;
	private String skuId; 
	private int quantity; 
	private long unitPrice; 
	private Date lastModifiedDate;
	
	public Item() {
		super();
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getSkuId() {
		return skuId;
	}

	public void setSkuId(String skuId) {
		this.skuId = skuId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public long getPrice() {
		return unitPrice;
	}

	public void setPrice(long unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	public long getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(long unitPrice) {
		this.unitPrice = unitPrice;
	}
}
