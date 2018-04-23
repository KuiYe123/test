package com.eduask.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.eduask.dao.ProductDao;
import com.eduask.model.HotProduct;
import com.eduask.model.StarProduct;
import com.eduask.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao star;

	@Override
	public List<StarProduct> selectStar() {
		return star.selectStar();
	}

	@Override
	public List<HotProduct> selectHot() {

		return star.selectHot();
	}

}
