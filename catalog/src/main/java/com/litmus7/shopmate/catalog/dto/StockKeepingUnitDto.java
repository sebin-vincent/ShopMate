package com.litmus7.shopmate.catalog.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sku_master")
public class StockKeepingUnitDto {

	public StockKeepingUnitDto() {

	}

	@Id
	@Column(name = "sku_id")
	private int skuId;

	@Column(name = "sku_name")
	private String skuName;

	@Column(name = "description")
	private String description;

	@Column(name = "list_price")
	private float listPrice;

	@Column(name = "sale_price")
	private float salePrice;

	@Column(name = "image_url")
	private String imageUrl;

	@Column(name = "max_order_quantity")
	private int maxOrderQuantity;

	@Column(name = "on_sale")
	private int onSale;

	@Column(name = "creation_date")
	private Date creationTime;

	public int getSkuId() {
		return skuId;
	}

	public void setSkuId(int skuId) {
		this.skuId = skuId;
	}

	public String getSkuName() {
		return skuName;
	}

	public void setSkuName(String skuName) {
		this.skuName = skuName;
	}

	public String getDiscription() {
		return description;
	}

	public void setDiscription(String discription) {
		this.description = discription;
	}

	public float getListPrice() {
		return listPrice;
	}

	public void setListPrice(float listPrice) {
		this.listPrice = listPrice;
	}

	public float getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public int getMaxOrderQuantity() {
		return maxOrderQuantity;
	}

	public void setMaxOrderQuantity(int maxOrderQuantity) {
		this.maxOrderQuantity = maxOrderQuantity;
	}

	public int getOnSale() {
		return onSale;
	}

	public void setOnSale(int onSale) {
		this.onSale = onSale;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

}
