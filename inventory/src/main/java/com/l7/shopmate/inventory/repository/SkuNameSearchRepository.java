package com.l7.shopmate.inventory.repository;

import com.l7.shopmate.inventory.model.SkuName;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import java.util.List;

public interface SkuNameSearchRepository extends ElasticsearchRepository<SkuName, String> {

    public List<SkuName> findBySkuName(String name);

}
