package com.litmus7.shopmate.catalog.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.catalog.dto.CatalogDto;
import com.litmus7.shopmate.catalog.dto.ResponseCatalogDto;


@Service
public interface RetrieveCatalogServiceDao {

	public List<ResponseCatalogDto> findAllCatalog();
}
