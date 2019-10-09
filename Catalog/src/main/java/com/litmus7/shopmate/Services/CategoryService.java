package com.litmus7.shopmate.Services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Dao.CategoryServiceDao;
import com.litmus7.shopmate.Dto.Category;
import com.litmus7.shopmate.Repository.CategoryRepository;


@Service
public class CategoryService implements CategoryServiceDao{

	@Autowired
	private  CategoryRepository  categoryRepository;

 
	@Override
	public List<Category> findAllCategory() {
		List<Category> categories = new  ArrayList<Category>();
		categoryRepository.findAll().forEach(categories::add);
		return categories;
	}


	@Override
	public List<Category> getByCatalogId(Long catalogId) {
		List<Category> categories = new  ArrayList<Category>();
		categoryRepository.findByCatalogsId(catalogId).forEach(categories::add);
		return categories;
	}
	
	
	
}
