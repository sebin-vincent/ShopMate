package com.litmus7.shopmate.catalog.repository;

import com.litmus7.shopmate.catalog.dto.StockKeepingUnitDto;

public interface LatestArrivalsRepository  {

    public StockKeepingUnitDto getSkuDetailsById(int skuId);

}
