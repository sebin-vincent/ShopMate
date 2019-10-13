package com.litmus7.shopmate.catalog.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.litmus7.shopmate.catalog.dto.ProductDto;

public interface ProductRepository extends JpaRepository<ProductDto, Integer> {
	
	@Query(value = "select DISTINCT pm.* from product_master pm inner join "
			+ "category_product pc on pm.product_id=pc.product_id where pc.category_id in :categoryList and pm.active_status=0"
			, nativeQuery = true)
	public List<ProductDto> findActiveProductsByCategory(@Param("categoryList") List<Integer> categoryList);

}
