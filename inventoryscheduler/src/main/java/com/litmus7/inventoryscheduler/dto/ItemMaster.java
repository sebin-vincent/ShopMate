package com.litmus7.inventoryscheduler.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "item_master")
public class ItemMaster {

	@Override
	public String toString() {
		return "ItemMaster [item_id=" + item_id + ", item_name=" + item_name + ", item_description=" + item_description
				+ ", hsn_code=" + hsn_code + ", unit_id=" + unit_id + ", start_datetime=" + start_datetime
				+ ", end_datetime=" + end_datetime + "]";
	}

	@Column
	@Id
	private String item_id;
	@Column
	private String item_name;

	public ItemMaster() {
		super();
	}

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

	@Column
	private String item_description;
	@Column
	private String hsn_code;
	@Column
	private Integer unit_id;
	@Column
	private Timestamp start_datetime;
	@Column
	private Timestamp end_datetime;

}
