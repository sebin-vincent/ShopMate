package com.litmus7.shopmate.order.model;

public class ReserveBodyDto {

    private String skuId;
    private int quantity;

    public String getSkuId() {
        return skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

	@Override
	public String toString() {
		return "ReserveBodyDto [skuId=" + skuId + ", quantity=" + quantity + "]";
	}
    
}
