package com.litmus7.inventoryscheduler.dto;


import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;


@Table(name = "stock_master")
public class StockMaster {

	@Column
	@Id
	private String item_id;
	@Column
	private Integer reserved_stock;
	@Column
	private Integer availble_stock;
	@Column
	private Integer total_stock;
	@Column
	private Integer dead_stock;
	@Column
	private Integer state_id;
	@Column
	private Integer preorder_level;
	@Column
	private Integer reorder_level;
	@Column
	private Integer backorder_level;
	public String getItem_id() {
		return item_id;
	}
	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}
	public Integer getReserved_stock() {
		return reserved_stock;
	}
	public void setReserved_stock(Integer reserved_stock) {
		this.reserved_stock = reserved_stock;
	}
	public Integer getAvailble_stock() {
		return availble_stock;
	}
	public void setAvailble_stock(Integer availble_stock) {
		this.availble_stock = availble_stock;
	}
	public Integer getTotal_stock() {
		return total_stock;
	}
	public void setTotal_stock(Integer total_stock) {
		this.total_stock = total_stock;
	}
	public Integer getDead_stock() {
		return dead_stock;
	}
	public void setDead_stock(Integer dead_stock) {
		this.dead_stock = dead_stock;
	}
	public Integer getState_id() {
		return state_id;
	}
	public void setState_id(Integer state_id) {
		this.state_id = state_id;
	}
	public Integer getPreorder_level() {
		return preorder_level;
	}
	public void setPreorder_level(Integer preorder_level) {
		this.preorder_level = preorder_level;
	}
	public Integer getReorder_level() {
		return reorder_level;
	}
	public void setReorder_level(Integer reorder_level) {
		this.reorder_level = reorder_level;
	}
	public Integer getBackorder_level() {
		return backorder_level;
	}
	public void setBackorder_level(Integer backorder_level) {
		this.backorder_level = backorder_level;
	}
}
