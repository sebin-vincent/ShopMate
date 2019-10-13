package com.litmus7.shopmate.Repository.impl;

import com.litmus7.shopmate.Dto.SkuDetailForLatestArrivals;
import com.litmus7.shopmate.Repository.LatestArrivalsRepository;
import org.springframework.stereotype.Component;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Component
public class LatestArrivalsRepositoryImpl implements LatestArrivalsRepository {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public SkuDetailForLatestArrivals getSkuDetails(String skuName) {

        SkuDetailForLatestArrivals skuDetailForLatestArrivals = new SkuDetailForLatestArrivals((float) 999.99, "test");
        return skuDetailForLatestArrivals;
    }
}
