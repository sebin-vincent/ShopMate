package com.l7.shopmate.inventory.service.urlbuilder;

import org.springframework.stereotype.Component;

@Component
public class PdpUrlBuilder implements UrlBuilder{

    public static final String BASE_URL = "products/";

    public String build(String itemName) {
        return BASE_URL + itemName.replaceAll("\\s+","+");
    }

}
