package com.litmus7.shopmate.Dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category_master")
public class Category {

	@Id
	@Column(name = "category_id")
	private long id;
	@Column(name = "category_name")
	private String name;
	@Column(name = "active_status")
	private int activeStatus;

	@ManyToMany(mappedBy = "categories")
	private List<Catalog> catalogs = new ArrayList<Catalog>();

	@ManyToMany
	@JoinTable(name = "category_product", joinColumns = { @JoinColumn(name = "category_id") }, inverseJoinColumns = {
			@JoinColumn(name = "product_id") })
	private List<Product> product = new ArrayList<Product>();

	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}

	/*
	 * public List<Catalog> getCatalogs() { return catalogs; }
	 * 
	 * public void setCatalogs(List<Catalog> catalogs) { this.catalogs = catalogs; }
	 */

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getActiveStatus() {
		return activeStatus;
	}

	public void setActiveStatus(int activeStatus) {
		this.activeStatus = activeStatus;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", activeStatus=" + activeStatus + "]";
	}

}
