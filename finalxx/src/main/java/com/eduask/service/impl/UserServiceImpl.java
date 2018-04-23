package com.eduask.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eduask.dao.UserDao;
import com.eduask.model.User;
import com.eduask.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userdao;
	
	

	@Override
	public int insertuser(User user) {
		return userdao.insertuser(user);
	}

	@Override
	public boolean selectuser(String username) {
		return userdao.selectuser(username);
	}

	@Override
	public boolean selectuser(User user) {
		
		return userdao.selectuser(user);
	}

	@Override
	public User selectuserone(User user) {
		return userdao.selectuserone(user);
	}

}
