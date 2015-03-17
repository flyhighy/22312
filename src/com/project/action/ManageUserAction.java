package com.project.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.AdminService;
import com.project.Service.UserService;
import com.project.bean.Street;
import com.project.bean.User;

public class ManageUserAction extends ActionSupport{

	private User user;
	private String newPassword;
	private String confirmPassword;
	private String checkOption;
	private UserService userService;
	private AdminService adminService;
	
	
	
	
	
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getCheckOption() {
		return checkOption;
	}
	public void setCheckOption(String checkOption) {
		this.checkOption = checkOption;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
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
	public String addUser() throws Exception {
		// TODO Auto-generated method stub
		user.setUserType(1);
		if (this.adminService.findUserByuserName(user.getUserUsername()))
		{
			this.addFieldError("userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		else
		{
		this.userService.saveUser(user);
		return SUCCESS;
		}
	}
	
	public String deleteUser() throws Exception {
		// TODO Auto-generated method stub

		User u =this.userService.findUserById(user.getUserId());
		
		this.userService.delete(u);
		return SUCCESS;
	}
	
	public String editPUser() throws Exception {
		// TODO Auto-generated method stub

		user=this.userService.findUserById(user.getUserId());
		return SUCCESS;
	}
	
	public String updateUser() throws Exception {
		// TODO Auto-generated method stub
	    User user1=this.userService.findUserById(user.getUserId());
		if (this.adminService.findUserByuserName(user.getUserUsername()) && !user1.getUserUsername().equals(user.getUserUsername()))
		{		
			this.addFieldError("user.userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		this.userService.update(user);
		return SUCCESS;
	}	
	
	public String deleteManyUser() throws Exception{
		if(checkOption!=null)
		{
		String[] listId=checkOption.split(", ");
		for(int i=0;i<listId.length;i++)
		{
			User user=this.userService.findUserByusername(listId[i]);
			this.userService.delete(user);
		}
		return SUCCESS;
		}
		else
			return INPUT;
	}
	//查看个人信息
	public String selfMessage() throws Exception{
		Map map=ActionContext.getContext().getSession();
	    user=(User)map.get("user");
		return SUCCESS;
	}
	//修改密码
	public String updatePassword() throws Exception{
		Map map=ActionContext.getContext().getSession();
	    User oldUser=(User)map.get("user");
	    if(!oldUser.getUserPassword().equals(user.getUserPassword()))
	    {
	    	this.addFieldError("userPassword", "原密码错误！");
	    	return INPUT;
	    }
	    oldUser.setUserPassword(newPassword);
	    this.userService.update(oldUser);
		return SUCCESS;
	}

	public void validateUpdatePassword() {
		if(!newPassword.equals(confirmPassword))
			this.addFieldError("newPassword", "两次密码输入不一致！");
	}
}
