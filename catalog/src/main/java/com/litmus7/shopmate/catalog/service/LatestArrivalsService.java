package com.litmus7.shopmate.catalog.service;

import com.litmus7.shopmate.catalog.dto.LatestArrivalsDto;

public interface LatestArrivalsService {

    public LatestArrivalsDto getLatestArrivedDto(int skuId);

}
