package com.eduask.service;

import java.util.List;

import com.eduask.model.Page;
import com.eduask.model.Phone;

public interface PhoneService {
	void select(Page page,String search);
	
	void getcount(Page page,String search);
}
