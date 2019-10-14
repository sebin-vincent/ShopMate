
package com.litmus7.shopmate.cart.dto;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
@Table(name = "order_detail")
public class Cart {
	@Transient
	private Long profileId;
	@Id
	@Column(name="no")
	private int num;
	
	@Column(name="order_id")
	private int orderId;
	
	
	@Column(name="sku_id")
	private String skuId;
	
	@Column(name="quantity")
	private int quantity;
	
	@Column(name="unit_price")
	private int unitPrice;
	
	@Column(name="last_modified_date")
	@Temporal(TemporalType.TIMESTAMP)
	
	private Date lastModifiedDate ;
	
	@Transient
	private List<Cart> cartList= new ArrayList<Cart>();
		
	public Cart() {
		
	}

	public Cart(Long profileId, int orderId, String skuId, int totalPrice, List<Cart> cartList, int quantity,
			Date lastModified) {
		this.profileId = profileId;
		this.orderId = orderId;
		this.skuId = skuId;
		this.unitPrice = totalPrice;
		this.cartList = cartList;
		this.quantity = quantity;
		this.lastModifiedDate = lastModified;
	}

	public Long getProfileId() {
		return profileId;
	}

	public void setProfileId(Long profileId) {
		this.profileId = profileId;
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

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public List<Cart> getCartList() {
		return cartList;
	}

	public void setCartList(List<Cart> cartList) {
		this.cartList = cartList;
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
}
