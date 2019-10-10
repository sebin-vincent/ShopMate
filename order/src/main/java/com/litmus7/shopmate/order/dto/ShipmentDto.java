package com.litmus7.shopmate.order.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="order_shipping_method")
public class ShipmentDto {
	
	@Id
	@Column(name="shipping_method_id")
	private int shipping_Method_Id;
	
	public int getShipping_Method_Id() {
		return shipping_Method_Id;
	}

	public void setShipping_Method_Id(int shipping_Method_Id) {
		this.shipping_Method_Id = shipping_Method_Id;
	}

	public String getShipping_Method() {
		return shipping_Method;
	}

	public void setShipping_Method(String shipping_Method) {
		this.shipping_Method = shipping_Method;
	}

	@Column(name="shipping_method")
	private String shipping_Method;

}
