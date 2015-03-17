package com.project.action;

import java.util.Map;

import org.aspectj.weaver.patterns.ThisOrTargetAnnotationPointcut;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.AdminService;
import com.project.Service.UserService;
import com.project.bean.Department;
import com.project.bean.User;

public class ManageDepartment extends ActionSupport {
	private Department department;
	private AdminService adminService;

	private UserService userService;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String addDepartment() throws Exception {
		user.setUserType(2);
		this.userService.saveUser(user);
		department.setUser(user);
		if (this.adminService.findUserByuserName(user.getUserUsername()))
		{
			this.addFieldError("userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		else {
			this.adminService.saveDepartment(department);
			return SUCCESS;
		}
	}

	@SuppressWarnings("unchecked")
	public String listDepartment() throws Exception {
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", this.adminService.findAllDepartment());
		return SUCCESS;
	}

	public String editDepartment() {
		// System.out.println("--------------------------------"+department.getDepartmentId());
		department = this.adminService.findDepartmentById(department
				.getDepartmentId());
		return SUCCESS;
	}

	public String updateDepartment() {
		User user=this.userService.findUserById(department.getUser().getUserId());
		if (this.adminService.findUserByuserName(department.getUser().getUserUsername()) && !user.getUserUsername().equals(department.getUser().getUserUsername()))
		{		
			this.addFieldError("userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		this.adminService.upateDepartment(department);
		return SUCCESS;
	}
}
