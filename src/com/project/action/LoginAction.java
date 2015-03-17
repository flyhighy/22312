package com.project.action;

import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.UserService;
import com.project.bean.User;


public class LoginAction extends ActionSupport {
	private User user;
	private int login_type;
	private UserService userService;
	
	public int getLogin_type() {
		return login_type;
	}
	public void setLogin_type(int login_type) {
		this.login_type = login_type;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@Override
	public String execute() throws Exception {
		if(this.login_type==0)
			user.setUserType(5);
		if(this.userService.findUserByName(user.getUserUsername(), user.getUserPassword(), user.getUserType()))
		    return user.getUserType().toString();
		else{
			this.addFieldError("login", "用户名或密码错误！");
			return INPUT;
		}
	}
	
}
