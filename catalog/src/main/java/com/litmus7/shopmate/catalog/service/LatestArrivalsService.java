package com.litmus7.shopmate.catalog.service;

import com.litmus7.shopmate.catalog.dto.LatestArrivalsDto;
import com.litmus7.shopmate.catalog.dto.StockKeepingUnitDto;

public interface LatestArrivalsService {

    public LatestArrivalsDto getLatestArrivedDto(int skuId);
   public StockKeepingUnitDto getSkuDetails(int skuId);

}
