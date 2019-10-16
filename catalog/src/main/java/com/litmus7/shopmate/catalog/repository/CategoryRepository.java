package com.litmus7.shopmate.Catalog.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.Catalog.dto.CategoryDto;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryDto, Integer> {
	
	@Query(value="select cm.* from category_master cm inner join catalog_category cc on "
			+ "cc.category_id=cm.category_id where cc.catalog_id=:activeCatalogId and "
			+ "cm.active_status=1",
			nativeQuery = true)
	public List<CategoryDto> findActiveCategories(@Param("activeCatalogId") int catalogId);
	
	@Query(value="select cm.* from category_master cm where cm.active_status='1' and cm.category_id in "
			+ "(select cs.subcategory_id from category_subcategory cs where cs.category_id=:categoryId)"
			, nativeQuery = true)
	public List<CategoryDto> findActiveSubCategories(@Param("categoryId") int categoryId);

}
