package com.litmus7.shopmate.Dto;

public class SkuDetailForLatestArrivals {

    private float price;
    private String skuImageUrl;

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getSkuImageUrl() {
        return skuImageUrl;
    }

    public void setSkuImageUrl(String skuImageUrl) {
        this.skuImageUrl = skuImageUrl;
    }

    public SkuDetailForLatestArrivals(float price, String skuImageUrl) {
        this.price = price;
        this.skuImageUrl = skuImageUrl;
    }
}
