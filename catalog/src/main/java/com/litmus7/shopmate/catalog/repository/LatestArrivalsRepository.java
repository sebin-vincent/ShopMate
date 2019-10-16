package com.litmus7.shopmate.Catalog.repository;

import com.litmus7.shopmate.Catalog.dto.StockKeepingUnitDto;

public interface LatestArrivalsRepository  {

    public StockKeepingUnitDto getSkuDetailsById(int skuId);

}
