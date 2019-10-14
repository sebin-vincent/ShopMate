package com.litmus7.shopmate.catalog.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.catalog.dto.StockKeepingUnitDto;

@Repository
public interface SkuRepository extends JpaRepository<StockKeepingUnitDto, Integer>{
	
	@Query(value="select sm.* from sku_master sm inner join product_sku ps on sm.sku_id=ps.sku_id"
			+ " where ps.product_id= :productId and sm.on_sale=0",
			nativeQuery=true)
	public List<StockKeepingUnitDto> getSkusbyProductId(@Param("productId") int productId);

}
