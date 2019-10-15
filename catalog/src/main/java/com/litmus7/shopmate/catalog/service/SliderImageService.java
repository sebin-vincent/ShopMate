package com.litmus7.shopmate.catalog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.litmus7.shopmate.catalog.dao.SliderImageDAO;
import com.litmus7.shopmate.catalog.dto.SliderImage;
import com.litmus7.shopmate.catalog.repository.SliderImageRepository;

@Service
public class SliderImageService implements SliderImageDAO{

	@Autowired
	SliderImageRepository repository;
	
	
	@Override
	public List<SliderImage> fetchSliderImages() {
		// TODO Auto-generated method stub
		return repository.fetchSliderImages();
	}

}
