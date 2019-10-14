package com.litmus7.shopmate.catalog.dto;

public class LatestArrivalsDto {

    private float skuPrice;
    private String skuImage;

    public float getSkuPrice() {
        return skuPrice;
    }

    public void setSkuPrice(float skuPrice) {
        this.skuPrice = skuPrice;
    }

    public String getSkuImage() {
        return skuImage;
    }

    public void setSkuImage(String skuImage) {
        this.skuImage = skuImage;
    }

    public LatestArrivalsDto(float skuPrice, String skuImage) {
        this.skuPrice = skuPrice;
        this.skuImage = skuImage;
    }
}
