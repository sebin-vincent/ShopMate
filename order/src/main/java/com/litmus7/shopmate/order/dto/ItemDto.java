package com.litmus7.shopmate.order.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "order_detail")
public class ItemDto {
	@Id
	private int no;
	private int orderId;
	@Column(name = "sku_id")
	private String skuId; 
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "unit_price")
	private int unitPrice; 
	@Column(name = "last_modified_date")
	private Date lastModifiedDate;
	
	public ItemDto() {
		super();
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
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

	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	public long getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	@Override
	public String toString() {
		return "ItemDto [no=" + no + ", orderId=" + orderId + ", skuId=" + skuId + ", quantity=" + quantity
				+ ", unitPrice=" + unitPrice + ", lastModifiedDate=" + lastModifiedDate + "]";
	}
	
}
