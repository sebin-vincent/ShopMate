package com.litmus7.shopmate.catalog.service;

import com.litmus7.shopmate.catalog.dto.LatestArrivalsDto;
import com.litmus7.shopmate.catalog.dto.StockKeepingUnitDto;
import com.litmus7.shopmate.catalog.repository.LatestArrivalsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class LatestArrivalsServiceImpl implements LatestArrivalsService{

    @Autowired
    LatestArrivalsRepository latestArrivalsRepository;

    @Override
    public LatestArrivalsDto getLatestArrivedDto(int skuId) {
        StockKeepingUnitDto stockKeepingUnitDto = latestArrivalsRepository.getSkuDetailsById(skuId);
        return new LatestArrivalsDto(stockKeepingUnitDto.getSalePrice(), stockKeepingUnitDto.getImageUrl());
    }

	@Override
	public StockKeepingUnitDto getSkuDetails(int skuId) {
		// TODO Auto-generated method stub
		StockKeepingUnitDto stockKeepingUnitDto = latestArrivalsRepository.getSkuDetailsById(skuId);
		return stockKeepingUnitDto;
	}
}
