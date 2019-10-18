package com.litmus7.shopmate.catalog.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.catalog.dao.RetrieveCatalogServiceDao;
import com.litmus7.shopmate.catalog.dto.CatalogDto;
import com.litmus7.shopmate.catalog.dto.ResponseCatalogDto;
import com.litmus7.shopmate.catalog.dto.ResponseSubCategoryProductDto;
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
		
		List<ResponseCatalogDto> response_Catalog=new ArrayList<ResponseCatalogDto>();
		List<CategoryDto> subCategories;
		
		ResponseCatalogDto responseCatalogDto;
		
		
		
		ResponseSubCategoryProductDto subCategoryProduct;
		List<ResponseSubCategoryProductDto> subCategoryProductList;
		
		
		CatalogDto catalog =catalogRepository.findByActiveStatus(1);
		
		
		List<CategoryDto> categories=categoryRepository.findActiveCategories(catalog.getCatalog_Id());

		
		
		for(CategoryDto category:categories) {
			responseCatalogDto=new ResponseCatalogDto();
			responseCatalogDto.setCategoryName(category.getCategoryName());
			subCategories=new ArrayList<>();
			subCategories.addAll(categoryRepository.findActiveSubCategories(category.getCategoryId()));
			subCategoryProductList=new ArrayList<>();
			for(CategoryDto subCategory:subCategories) {
				subCategoryProduct=new ResponseSubCategoryProductDto();
				subCategoryProduct.setSubCategory(subCategory.getCategoryName());
				subCategoryProduct.setProducts(ProductRepository.findActiveProductsByCategory(subCategory.getCategoryId()));
				subCategoryProductList.add(subCategoryProduct);
			}
			responseCatalogDto.setSubCategoryProducts(subCategoryProductList);
			response_Catalog.add(responseCatalogDto);
		}
		
		
		return response_Catalog;
	}

}



