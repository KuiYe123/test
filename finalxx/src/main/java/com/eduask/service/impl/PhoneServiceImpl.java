package com.eduask.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eduask.dao.PhoneDao;
import com.eduask.model.Page;
import com.eduask.model.Phone;
import com.eduask.service.PhoneService;

@Service
public class PhoneServiceImpl implements PhoneService{
	
	@Autowired
	private PhoneDao phone;
	

	@Override
	public void getcount(Page page, String search) {
		phone.getcount(page, search);
		
	}

	@Override
	public void select(Page page, String search) {
		// TODO Auto-generated method stub
		phone.select(page, search);
	}

}
