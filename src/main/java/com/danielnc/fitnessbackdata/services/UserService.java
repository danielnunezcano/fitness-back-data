package com.danielnc.fitnessbackdata.services;

import com.danielnc.fitnessbackdata.dao.User;

public interface UserService {
	public User findUserByUsername(String username);
	public User findUserByEmail(String email);
	public void saveUser(User user);
}