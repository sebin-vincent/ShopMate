package com.litmus7.shopmate.Catalog.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.litmus7.shopmate.Catalog.dto.ProductDto;

public interface ProductRepository extends JpaRepository<ProductDto, Integer> {
	
	@Query(value = "select pm.* from product_master pm inner join"
			+ " category_product cp on pm.product_id=cp.product_id "
			+ "where pm.active_status=0 and cp.category_id=:categoryId"
			, nativeQuery = true)
	public List<ProductDto> findActiveProductsByCategory(@Param("categoryId") int categoryId);

}
