package com.litmus7.shopmate.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.Dto.Category;
import com.litmus7.shopmate.Dto.Product;
import com.litmus7.shopmate.Services.CategoryService;
import com.litmus7.shopmate.Services.ProductService;


@RestController
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("catalog/{id}/categories/{id}/products")
	public List<Product> getAllProduct(@PathVariable Long id) {

		return productService.findAllProducts(id);
	}

}
