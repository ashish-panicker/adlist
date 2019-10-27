package com.adlist.model.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.adlist.model.User;
import com.adlist.model.dao.UserDao;

public class UserServiceImpl implements UserService {

	private UserDao userDao;
	private final String SALT = "sjfksjJ7634NJFNGPOkii7$%#";

	public UserServiceImpl() {
	}
	
	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void create(User user) {
//		String saltedPassword = SALT   password;
//		String hashedPassword = generateHash(saltedPassword);
		this.userDao.create(user);

	}

	public String hashPassword(String input) throws NoSuchAlgorithmException {
		StringBuilder hash = new StringBuilder();
		MessageDigest sha = MessageDigest.getInstance("SHA-1");
		byte[] hashedBytes = sha.digest(input.getBytes());
		char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
		for (int idx = 0; idx < hashedBytes.length; idx++) {
			byte b = hashedBytes[idx];
			hash.append(digits[(b & 0xf0) >> 4]);
			hash.append(digits[b & 0x0f]);
		}
		return hash.toString();
	}

	@Override
	public User findByEmail(String email) {
		return this.userDao.findByEmail(email);
	}

	@Override
	public boolean isValidLogin(String email, String password) throws NoSuchAlgorithmException {
		User user = findByEmail(email);
		if(user != null) {
			if(user.getPassword().equals(hashPassword(password))) {
				return true;
			}
		}
		return false;
	}

}
