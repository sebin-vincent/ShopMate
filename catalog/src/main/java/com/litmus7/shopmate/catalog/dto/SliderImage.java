package com.litmus7.shopmate.catalog.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "catalog_sliderimage")
public class SliderImage {

	@Id
	@Column(name = "image_id")
	private Integer image_id;
	
	@Column(name = "image_url")
	private String image_url;
	
	@Column(name = "added_date")
	private Date added_date;
	
	@Column(name = "sku_id")
	private Integer sku_id;
	
	@Column(name = "active")
	private Boolean active;
	
	@Column(name = "pdp_url")
	private String pdp_url;

	public String getPdp_url() {
		return pdp_url;
	}

	public void setPdp_url(String pdp_url) {
		this.pdp_url = pdp_url;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public Integer getSku_id() {
		return sku_id;
	}

	public void setSku_id(Integer sku_id) {
		this.sku_id = sku_id;
	}

	public Integer getImage_id() {
		return image_id;
	}

	public void setImage_id(Integer image_id) {
		this.image_id = image_id;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public Date getAdded_date() {
		return added_date;
	}

	public void setAdded_date(Date added_date) {
		this.added_date = added_date;
	}
	
}
