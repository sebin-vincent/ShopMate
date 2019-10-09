package com.litmus7.shopmate.Dao;

import java.util.List;
import org.springframework.stereotype.Service;
import com.litmus7.shopmate.Dto.Catalog;

@Service
public interface CatalogServiceDao {

	public List<Catalog>findAllCatalog();
}
