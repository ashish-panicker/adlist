package com.adlist.model.service;

import java.security.NoSuchAlgorithmException;

import com.adlist.model.User;

public interface UserService {

	void create(User user);
	String hashPassword(String input) throws NoSuchAlgorithmException;
	User findByEmail(String email);
	boolean isValidLogin(String email, String password) throws NoSuchAlgorithmException;
}
