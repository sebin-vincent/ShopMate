package com.l7.shopmate.inventory.service.impl;

import com.l7.shopmate.inventory.model.SkuName;
import com.l7.shopmate.inventory.repository.SkuNameSearchRepository;
import com.l7.shopmate.inventory.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchServiceImpl implements SearchService {

    @Autowired
    SkuNameSearchRepository skuNameSearchRepository;

    @Override
    public List<SkuName> retrieveSearchResults(String name) {

        return skuNameSearchRepository.findBySkuName(name);

    }
}
