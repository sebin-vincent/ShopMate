package com.litmus7.shopmate.Catalog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Catalog.dao.RetrieveSkuServiceDao;
import com.litmus7.shopmate.Catalog.dto.StockKeepingUnitDto;
import com.litmus7.shopmate.Catalog.repository.SkuRepository;

@Service
public class RetrieveSkuServiceImpl implements RetrieveSkuServiceDao {
	
	@Autowired
	SkuRepository skuRepositoryImpl;

	@Override
	public List<StockKeepingUnitDto> RetrieveSkuFromProductId(int productId) {
		// TODO Auto-generated method stub
		return skuRepositoryImpl.getSkusbyProductId(productId);
	}

	

}
