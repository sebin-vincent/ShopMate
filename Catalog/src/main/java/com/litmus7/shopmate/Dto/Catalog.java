package com.litmus7.shopmate.Dto;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="catalog_master")
public class Catalog {

	@Id
	@Column(name = "catalog_id")
	private long id;
	
	@Column(name = "catalog_name")
	private String name;
	@Column(name = "active_status")
	private int activeStatus;
	
	
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
		return "Catalog [id=" + id + ", name=" + name + ", activeStatus=" + activeStatus + "]";
	}
	
	
}
