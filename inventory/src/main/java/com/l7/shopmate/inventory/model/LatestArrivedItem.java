package com.l7.shopmate.inventory.model;

public class LatestArrivedItem {

    private String skuId;
    private String skuName;
    private String skuPDPUrl;

    public LatestArrivedItem(String skuId, String skuName, String skuPDPUrl) {
        this.skuId = skuId;
        this.skuName = skuName;
        this.skuPDPUrl = skuPDPUrl;
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


    public String getSkuId() {
        return skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }


    @Override
    public String toString() {
        return "LatestArrivedItem{" +
                "skuName='" + skuName + '\'' +
                ", skuPDPUrl='" + skuPDPUrl + '\'' +
                '}';
    }
}
