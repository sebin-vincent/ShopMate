package com.litmus7.shopmate.catalog.dto;

import java.util.List;

public class ResponseCatalogDto {
	
	private List<ProductDto> products;
	
	private String categoryName;

	public String getCategory() {
		return categoryName;
	}

	public void setCategory(String category) {
		categoryName = category;
	}

	public List<ProductDto> getProducts() {
		return products;
	}

	public void setProducts(List<ProductDto> products) {
		this.products = products;
	}

}
