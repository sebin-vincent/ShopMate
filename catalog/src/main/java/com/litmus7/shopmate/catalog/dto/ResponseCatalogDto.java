package com.litmus7.shopmate.Catalog.dto;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ResponseCatalogDto {
	
	private String categoryName;
	
	private List<ResponseSubCategoryProductDto> subCategoryProducts;

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<ResponseSubCategoryProductDto> getSubCategoryProducts() {
		return subCategoryProducts;
	}

	public void setSubCategoryProducts(List<ResponseSubCategoryProductDto> subCategoryProducts) {
		this.subCategoryProducts = subCategoryProducts;
	}
	



}
