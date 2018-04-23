package com.eduask.dao;

import java.util.List;

import com.eduask.model.Page;
import com.eduask.model.Phone;

public interface PhoneDao {
	void select(Page page,String search);
	void getcount(Page page,String search);
}
