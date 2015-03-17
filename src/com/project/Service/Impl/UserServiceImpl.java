package com.project.Service.Impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.opensymphony.xwork2.ActionContext;
import com.project.Dao.UserDAO;
import com.project.Service.UserService;
import com.project.bean.User;


public class UserServiceImpl implements UserService {
	private UserDAO userdao;
	
	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		this.userdao.saveUser(user);

	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		this.userdao.removeUser(user);
	}
 
	@Override
	public boolean findUserByName(String username,String password,int type) {
		// TODO Auto-generated method stuby
		User us=this.userdao.findUserByName(username);
		ActionContext.getContext().getSession().put("user", us);
		if(us!=null && us.getUserPassword().equals(password) && us.getUserUsername().equals(username) && us.getUserType()==type)
		    return true;
		else
			return false;
	}
	public User findUserByusername(String username){
		return this.userdao.findUserByName(username);
	}

	@Override
	public User findUserById(int id) {
		// TODO Auto-generated method stub
		return this.userdao.findUserById(id);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return this.userdao.findAllUser();
	}
	public List<User> findUsersByUserType(int userType){
		return this.userdao.findUsersByUserType(userType);
	}
	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		this.userdao.updateUser(user);

	}	
	}