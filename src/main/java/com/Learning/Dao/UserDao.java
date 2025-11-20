package com.Learning.Dao;

import com.Learning.model.User;
public interface UserDao {

	boolean addUser(User user);
	boolean isValidUser(String username, String password);
}
