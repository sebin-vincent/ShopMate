package com.litmus7.shopmate.Catalog.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.Catalog.dto.ResponseCatalogDto;


@Service
public interface RetrieveCatalogServiceDao {

	public List<ResponseCatalogDto> findAllCatalog();
}
