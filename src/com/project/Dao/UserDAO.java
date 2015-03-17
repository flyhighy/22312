package com.project.Dao;

import java.util.List;

import com.project.bean.User;

public interface UserDAO {
	public void saveUser(User user);
	public User findUserById(int id);
	
	public void removeUser(User user);
	public List<User> findAllUser();
	public void updateUser(User user);
	public User findUserByName(String username);
	public List<User> findUsersByUserType(int userType);
}
