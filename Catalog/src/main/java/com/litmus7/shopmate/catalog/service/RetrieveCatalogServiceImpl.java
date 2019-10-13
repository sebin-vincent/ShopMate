package com.litmus7.shopmate.catalog.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.catalog.dao.RetrieveCatalogServiceDao;
import com.litmus7.shopmate.catalog.dto.CatalogDto;
import com.litmus7.shopmate.catalog.dto.ResponseCatalogDto;
import com.litmus7.shopmate.catalog.dto.CategoryDto;
import com.litmus7.shopmate.catalog.repository.CatalogRepository;
import com.litmus7.shopmate.catalog.repository.CategoryRepository;
import com.litmus7.shopmate.catalog.repository.ProductRepository;

@Service
public class RetrieveCatalogServiceImpl implements RetrieveCatalogServiceDao {
	
	@Autowired
	CatalogRepository catalogRepository;
	
	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	ProductRepository ProductRepository;

	@Override
	public List<ResponseCatalogDto> findAllCatalog() {
		// TODO Auto-generated method stub
		
		List<ResponseCatalogDto> response_Catalog=new ArrayList<ResponseCatalogDto>();
		
		CatalogDto catalog =catalogRepository.findByActiveStatus(1);
		
		
		List<CategoryDto> categories=categoryRepository.findActiveCategories(catalog.getCatalog_Id());

		
		List<Integer> activeSubCategoryList;
		
		for(CategoryDto category:categories) {
			activeSubCategoryList=new ArrayList<Integer>();
			activeSubCategoryList.add(category.getCategoryId());
			activeSubCategoryList.addAll(categoryRepository.findActiveSubCategories(category.getCategoryId()));
			ResponseCatalogDto catelogResponse=new ResponseCatalogDto();
			catelogResponse.setCategory(category.getCategoryName());
			catelogResponse.setProducts(ProductRepository.findActiveProductsByCategory(activeSubCategoryList));
			response_Catalog.add(catelogResponse);
		}
		
		
		return response_Catalog;
	}

}
