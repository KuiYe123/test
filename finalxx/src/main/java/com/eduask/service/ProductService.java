package com.eduask.service;

import java.util.List;

import com.eduask.model.HotProduct;
import com.eduask.model.StarProduct;

public interface ProductService {
	List<StarProduct> selectStar();
	
	List<HotProduct> selectHot();
}
