package com.litmus7.shopmate.Dao;

import java.util.List;

import com.litmus7.shopmate.Dto.Category;


public interface CategoryServiceDao {

	public List<Category>findAllCategory();
	public List<Category>getByCatalogId(Long catalogId);
}
