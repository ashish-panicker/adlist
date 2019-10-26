package com.adlist.model.dao;

import com.adlist.model.User;

public interface UserDao {
	
	void create(User user);
	
	User findByEmail(String email);

}
