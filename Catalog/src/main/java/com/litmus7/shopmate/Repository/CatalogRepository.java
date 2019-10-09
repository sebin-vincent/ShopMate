package com.litmus7.shopmate.Repository;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.Dto.Catalog;

@EntityScan("com.litmus7.shopmate.Dto")
@Repository
public interface CatalogRepository extends CrudRepository<Catalog, Long> {

}
