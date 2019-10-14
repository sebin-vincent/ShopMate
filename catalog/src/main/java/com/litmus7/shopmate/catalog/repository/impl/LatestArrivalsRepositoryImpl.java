package com.litmus7.shopmate.catalog.repository.impl;

import com.litmus7.shopmate.catalog.dto.StockKeepingUnitDto;
import com.litmus7.shopmate.catalog.repository.LatestArrivalsRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class LatestArrivalsRepositoryImpl implements LatestArrivalsRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public StockKeepingUnitDto getSkuDetailsById(int skuId) {
        return entityManager.find(StockKeepingUnitDto.class, skuId);
    }
}
