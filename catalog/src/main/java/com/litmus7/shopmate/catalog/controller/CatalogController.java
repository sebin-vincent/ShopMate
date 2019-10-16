package com.litmus7.shopmate.Catalog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.litmus7.shopmate.Catalog.dto.LatestArrivalsDto;
import com.litmus7.shopmate.Catalog.dto.Response_Info;
import com.litmus7.shopmate.Catalog.service.LatestArrivalsService;
import com.litmus7.shopmate.Catalog.service.RetrieveCatalogServiceImpl;
import com.litmus7.shopmate.Catalog.service.RetrieveSkuServiceImpl;

@RestController
public class CatalogController {
	@Autowired
	Response_Info response_Info;

	@Autowired
	RetrieveCatalogServiceImpl retrieveCatalogServiceImpl;
	
	@Autowired
	RetrieveSkuServiceImpl retrieveSkuServiceImpl;

	@Autowired
	LatestArrivalsService latestArrivalsService;

	@GetMapping("/catalog")
	public Response_Info getCatalog() {

		response_Info.setPayload(retrieveCatalogServiceImpl.findAllCatalog());
		

		return response_Info;
	}
	
	@GetMapping("/sku/{productId}")
	public Response_Info getSku(@PathVariable int productId) {
		
		
		response_Info.setPayload(retrieveSkuServiceImpl.RetrieveSkuFromProductId(productId));
		
		return response_Info;
	}

	@GetMapping("/sku/latest/{skuId}")
	public LatestArrivalsDto getLatestArrivedItemDetails(@PathVariable int skuId) {
		return latestArrivalsService.getLatestArrivedDto(skuId);
	}

}
