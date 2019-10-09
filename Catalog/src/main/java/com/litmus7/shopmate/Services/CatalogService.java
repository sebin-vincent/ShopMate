package com.litmus7.shopmate.Services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Dto.Catalog;
import com.litmus7.shopmate.Repository.CatalogRepository;;


@Service
public class CatalogService {

	@Autowired
	private CatalogRepository catalogRepository;
	
	public Optional<Catalog> getMenu() {
		Optional<Catalog> menu =  catalogRepository.findById(1L);
		
		return menu;
	}
	
	
	
}
