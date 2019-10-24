package com.l7.shopmate.inventory.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.elasticsearch.annotations.Document;

import org.springframework.data.annotation.Id;

@Data
@Document(indexName = "shopmate_items", type = "sku_names", shards = 2)
//@AllArgsConstructor
@NoArgsConstructor
public class SkuName {

    @Id
    private String skuId;
    private String skuName;

    public SkuName(String itemId, String itemName) {
        this.skuId = itemId;
        this.skuName = itemName;
    }

}
