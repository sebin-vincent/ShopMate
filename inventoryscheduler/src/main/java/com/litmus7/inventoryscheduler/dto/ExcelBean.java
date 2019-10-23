package com.litmus7.inventoryscheduler.dto;

import java.sql.Timestamp;

public class ExcelBean {

	private String item_id;
	private String item_name;
	private String item_description;
	private Integer reserved_stock;

	@Override
	public String toString() {
		return "ExcelBean [item_id=" + item_id + ", item_name=" + item_name + ", item_description=" + item_description
				+ ", reserved_stock=" + reserved_stock + ", availble_stock=" + availble_stock + ", total_stock="
				+ total_stock + ", dead_stock=" + dead_stock + ", state_id=" + state_id + ", preorder_level="
				+ preorder_level + ", reorder_level=" + reorder_level + ", backorder_level=" + backorder_level
				+ ", hsn_code=" + hsn_code + ", unit_id=" + unit_id + ", start_datetime=" + start_datetime
				+ ", end_datetime=" + end_datetime + "]";
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

	private Integer availble_stock;
	private Integer total_stock;
	private Integer dead_stock;
	private Integer state_id;
	private Integer preorder_level;
	private Integer reorder_level;
	private Integer backorder_level;

	public String getItem_id() {
		return item_id;
	}

	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_description() {
		return item_description;
	}

	public void setItem_description(String item_description) {
		this.item_description = item_description;
	}

	public String getHsn_code() {
		return hsn_code;
	}

	public void setHsn_code(String hsn_code) {
		this.hsn_code = hsn_code;
	}

	public Integer getUnit_id() {
		return unit_id;
	}

	public void setUnit_id(Integer unit_id) {
		this.unit_id = unit_id;
	}

	public Timestamp getStart_datetime() {
		return start_datetime;
	}

	public void setStart_datetime(Timestamp start_datetime) {
		this.start_datetime = start_datetime;
	}

	public Timestamp getEnd_datetime() {
		return end_datetime;
	}

	public void setEnd_datetime(Timestamp end_datetime) {
		this.end_datetime = end_datetime;
	}

	private String hsn_code;
	private Integer unit_id;
	private Timestamp start_datetime;
	private Timestamp end_datetime;
}
