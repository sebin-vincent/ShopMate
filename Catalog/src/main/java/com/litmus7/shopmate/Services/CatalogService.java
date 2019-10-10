package com.litmus7.shopmate.Services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Dao.CatalogServiceDao;
import com.litmus7.shopmate.Dto.Catalog;
import com.litmus7.shopmate.Repository.CatalogRepository;


@Service
public class CatalogService implements CatalogServiceDao{

	@Autowired
	private CatalogRepository catalogRepository;
	


	@Override
	public List<Catalog> findAllCatalog() {
		List<Catalog> catalogs = new ArrayList<Catalog>();
		catalogRepository.findAll().forEach(catalogs::add);
		return catalogs;
	}
	
	
	
}
