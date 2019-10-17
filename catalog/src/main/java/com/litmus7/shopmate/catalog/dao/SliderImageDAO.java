package com.litmus7.shopmate.catalog.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.litmus7.shopmate.catalog.dto.SliderImage;

@Service
public interface SliderImageDAO {

	public List<SliderImage> fetchSliderImages();
}
