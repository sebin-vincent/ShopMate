package com.litmus7.shopmate.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.Dto.Catalog;

@Repository
public interface CatalogRepository extends CrudRepository<Catalog, Long> {

}
