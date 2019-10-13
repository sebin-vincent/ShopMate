package com.l7.shopmate.inventory.model;

public class LatestArrivedItem {

    private String skuName;
    private String skuPDPUrl;
    private String SkuImageUrl;
    private int price;

    public LatestArrivedItem(String skuName, String skuPDPUrl, String skuImageUrl, int price) {
        this.skuName = skuName;
        this.skuPDPUrl = skuPDPUrl;
        SkuImageUrl = skuImageUrl;
        this.price = price;
    }

    public String getSkuName() {
        return skuName;
    }

    public void setSkuName(String skuName) {
        this.skuName = skuName;
    }

    public String getSkuPDPUrl() {
        return skuPDPUrl;
    }

    public void setSkuPDPUrl(String skuPDPUrl) {
        this.skuPDPUrl = skuPDPUrl;
    }

    public String getSkuImageUrl() {
        return SkuImageUrl;
    }

    public void setSkuImageUrl(String skuImageUrl) {
        SkuImageUrl = skuImageUrl;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "LatestArrivedItem{" +
                "skuName='" + skuName + '\'' +
                ", skuPDPUrl='" + skuPDPUrl + '\'' +
                ", SkuImageUrl='" + SkuImageUrl + '\'' +
                ", price=" + price +
                '}';
    }
}
