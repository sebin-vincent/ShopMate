package com.litmus7.shopmate.catalog.dto;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ResponseSubCategoryProductDto {
	
	public ResponseSubCategoryProductDto() {

	}
	
	private String SubCategory;
	
	private List<ProductDto> products;

	public String getSubCategory() {
		return SubCategory;
	}

	public void setSubCategory(String subCategory) {
		SubCategory = subCategory;
	}

	public List<ProductDto> getProducts() {
		return products;
	}

	public void setProducts(List<ProductDto> products) {
		this.products = products;
	}
	
	

}
