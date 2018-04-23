package com.eduask.dao;

import com.eduask.model.User;

public interface UserDao {
	boolean selectuser(String username);
	int insertuser(User user);
	boolean selectuser(User user);
	User selectuserone(User user);
}
