package com.eduask.service;

import com.eduask.model.User;

public interface UserService {
	boolean selectuser(String username); 
	
	int insertuser(User user);
	
	boolean selectuser(User user);
	
	User selectuserone(User user);
}
