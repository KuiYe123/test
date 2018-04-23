package com.eduask.dao;

import java.util.List;

import com.eduask.model.HotProduct;
import com.eduask.model.StarProduct;
import com.eduask.model.User;

public interface ProductDao {
	List<StarProduct> selectStar();
	
	List<HotProduct> selectHot();
}
