package com.litmus7.shopmate.Dao;

import java.util.List;

import com.litmus7.shopmate.Dto.Product;


public interface ProductServiceDao {

	
	public List<Product>findAllProducts(Long subCategoryId);
}
