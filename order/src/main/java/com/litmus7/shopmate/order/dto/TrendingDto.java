package com.litmus7.shopmate.order.dto;

public class TrendingDto {

    private String skuId;

    public String getSkuId() {
        return skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }

    public TrendingDto(String skuId) {
        this.skuId = skuId;
    }

    public TrendingDto() {
    }
}
