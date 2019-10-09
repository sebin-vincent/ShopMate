package com.litmus7.shopmate.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.Dto.Catalog;
import com.litmus7.shopmate.Services.CatalogService;

@RestController

public class CatalogController {

	@Autowired
	private CatalogService catalogService;

	@GetMapping("/catalog")
	public Optional<Catalog> getCatalog() {

		return catalogService.getMenu();
	}

}
