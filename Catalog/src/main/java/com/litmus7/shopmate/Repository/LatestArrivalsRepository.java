package com.litmus7.shopmate.Repository;

import com.litmus7.shopmate.Dto.SkuDetailForLatestArrivals;

public interface LatestArrivalsRepository {

    public SkuDetailForLatestArrivals getSkuDetails(String skuName);

}
