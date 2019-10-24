package com.l7.shopmate.inventory.service;

import com.l7.shopmate.inventory.model.SkuName;

import java.util.List;

public interface SearchService {

    public List<SkuName> retrieveSearchResults(String name);

}
