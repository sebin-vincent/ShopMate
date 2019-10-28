package com.l7.shopmate.inventory.service.impl;

import com.l7.shopmate.inventory.entity.Item;
import com.l7.shopmate.inventory.model.SkuName;
import com.l7.shopmate.inventory.repository.SkuNameIndexRepository;
import com.l7.shopmate.inventory.repository.SkuNameSearchRepository;
import com.l7.shopmate.inventory.service.IndexingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class IndexServiceImpl implements IndexingService {

    @Autowired
    SkuNameIndexRepository indexRepository;

    @Autowired
    SkuNameSearchRepository searchRepository;

    @Override
    public String indexInventoryDatabase() {

        List<Item> items = indexRepository.findAll();

        List<SkuName> skuNames = new ArrayList<>();

        for (Item item : items) {
            SkuName skuName = new SkuName(item.getItemId(), item.getItemName());
            skuNames.add(skuName);
        }

        searchRepository.saveAll(skuNames);

        return skuNames.size() + " items indexed.";

    }
}
