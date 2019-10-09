package com.litmus7.shopmate.Services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Dao.CatalogServiceDao;
import com.litmus7.shopmate.Dto.Catalog;
import com.litmus7.shopmate.Repository.CatalogRepository;

@ComponentScan("com.litmus7.shopmate")
@Service
public class CatalogService implements CatalogServiceDao{

	@Autowired
	private CatalogRepository catalogRepository;
	
	
	public Optional<Catalog> getMenu() {
		
		Optional<Catalog> menu =  catalogRepository.findById(1L);
		return menu;
	}

	@Override
	public List<Catalog> findAllCatalog() {
		List<Catalog> catalogs = new ArrayList<Catalog>();
		catalogRepository.findAll().forEach(catalogs::add);
		return catalogs;
	}
	
	
	
}
