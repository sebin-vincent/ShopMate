package com.litmus7.shopmate.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Dao.ProductServiceDao;
import com.litmus7.shopmate.Dto.Product;
import com.litmus7.shopmate.Repository.ProductRepository;


@Service
public class ProductService implements ProductServiceDao{

	@Autowired
	private  ProductRepository  productRepository;

	@Override
	public List<Product> findAllProducts(Long subCategoryId) {
		// TODO Auto-generated method stub
		return null;
	}

 
	
}
