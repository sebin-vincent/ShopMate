package com.litmus7.shopmate.Catalog.repository.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.Catalog.dto.StockKeepingUnitDto;
import com.litmus7.shopmate.Catalog.repository.LatestArrivalsRepository;

@Repository
public class LatestArrivalsRepositoryImpl implements LatestArrivalsRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public StockKeepingUnitDto getSkuDetailsById(int skuId) {
        return entityManager.find(StockKeepingUnitDto.class, skuId);
    }
}
