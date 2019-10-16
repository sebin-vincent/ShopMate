package com.litmus7.shopmate.Catalog.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Catalog.dto.StockKeepingUnitDto;

@Service
public interface RetrieveSkuServiceDao {
	
	public List<StockKeepingUnitDto> RetrieveSkuFromProductId(int productId);

}
