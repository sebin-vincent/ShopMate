package com.litmus7.shopmate.catalog.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.stereotype.Repository;

import com.litmus7.shopmate.catalog.dto.SliderImage;
import com.litmus7.shopmate.catalog.repository.SliderImageRepository;

@EntityScan("com.litmus7.shopmate.catalog.dto")
@Repository
public class SliderImageRepositoryImpl implements SliderImageRepository{

	@PersistenceContext
	EntityManager entityManager;

	@Override
	public List<SliderImage> fetchSliderImages() {
		// TODO Auto-generated method stub
		Query query =entityManager.createQuery("select sl from SliderImage sl where sl.active=1 order by sl.added_date");
		return query.getResultList();
		//return null;
	}
	
	
	
}
