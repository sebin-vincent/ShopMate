package com.litmus7.shopmate.Catalog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Catalog.dto.LatestArrivalsDto;
import com.litmus7.shopmate.Catalog.dto.StockKeepingUnitDto;
import com.litmus7.shopmate.Catalog.repository.LatestArrivalsRepository;

@Service
public class LatestArrivalsServiceImpl implements LatestArrivalsService{

    @Autowired
    LatestArrivalsRepository latestArrivalsRepository;

    @Override
    public LatestArrivalsDto getLatestArrivedDto(int skuId) {
        StockKeepingUnitDto stockKeepingUnitDto = latestArrivalsRepository.getSkuDetailsById(skuId);
        return new LatestArrivalsDto(stockKeepingUnitDto.getSalePrice(), stockKeepingUnitDto.getImageUrl());
    }
}
