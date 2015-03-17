package com.project.Service;

import java.io.InputStream;
import java.util.List;

import com.project.bean.User;



public interface UserService {
	public void saveUser(User user);
	public void delete(User user);
	public User findUserById(int id);
	public List<User> findAll();
	public void update(User user);
	public boolean findUserByName(String username,String password,int type);
	public User findUserByusername(String username);
	public List<User> findUsersByUserType(int userType);
}
