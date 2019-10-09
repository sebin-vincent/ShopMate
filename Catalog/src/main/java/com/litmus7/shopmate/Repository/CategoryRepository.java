package com.litmus7.shopmate.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import com.litmus7.shopmate.Dto.Category;

@Component
public interface CategoryRepository extends CrudRepository<Category, Long>{

	
}
