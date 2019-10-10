package com.litmus7.shopmate.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.Dto.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

	public List<Product>findByCategoriesId(Long categorylogId);
}
