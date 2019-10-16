package com.litmus7.shopmate.Catalog.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.Catalog.dto.CatalogDto;

@Repository
public interface CatalogRepository extends JpaRepository<CatalogDto, Integer> {
	
	public CatalogDto findByActiveStatus(int active_Bit);
	
	
	

	


}
