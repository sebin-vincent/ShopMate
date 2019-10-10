package com.litmus7.shopmate.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.Dto.Category;
import com.litmus7.shopmate.Services.CategoryService;


@RestController
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@GetMapping("catalog/{id}/categories")
	public List<Category> getCatalog(@PathVariable Long id) {

		return categoryService.getByCatalogId(id);
	}

}
