package com.l7.shopmate.inventory.controller;

import com.l7.shopmate.inventory.model.SkuName;
import com.l7.shopmate.inventory.service.IndexingService;
import com.l7.shopmate.inventory.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/items")
public class SearchEngineController {

    @Autowired
    SearchService searchService;

    @Autowired
    IndexingService indexingService;

    @CrossOrigin
    @GetMapping("/search/{name}")
    public List<SkuName> searchBySkuName(@PathVariable String name) {

        return searchService.retrieveSearchResults(name);

    }

    @CrossOrigin
    @GetMapping("/index-data")
    public String indexDBData() {

        return indexingService.indexInventoryDatabase();

    }
}
