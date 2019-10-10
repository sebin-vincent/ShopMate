package com.litmus7.shopmate.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.Dto.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

	public List<Category>findByCatalogsId(Long catalogId);
}
