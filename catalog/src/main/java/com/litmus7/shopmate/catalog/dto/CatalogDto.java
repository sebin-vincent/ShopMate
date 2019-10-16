package com.litmus7.shopmate.Catalog.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="catalog_master")
public class CatalogDto {
	 
	@Id
	@Column(name="catalog_id")
	private int catalogId;
	
	@Column(name="catalog_name")
	private String catalog_Name;
	
	@Column(name="active_status")
	private int activeStatus;
	
	
	
	

	public int getCatalog_Id() {
		return catalogId;
	}

	public void setCatalog_Id(int catalog_Id) {
		this.catalogId = catalog_Id;
	}

	public String getCatalog_Name() {
		return catalog_Name;
	}

	public void setCatalog_Name(String catalog_Name) {
		this.catalog_Name = catalog_Name;
	}

	public int getActiveStatus() {
		return activeStatus;
	}

	public void setActiveStatus(int activeStatus) {
		this.activeStatus = activeStatus;
	}
	
	
}
