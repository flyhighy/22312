package com.project.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.AdminService;
import com.project.Service.UserService;
import com.project.bean.Company;
import com.project.bean.Office;
import com.project.bean.User;

public class ManageOfficeAction extends ActionSupport {
	private Office office;
	private String checkOption;
	private AdminService adminService;
	private UserService userService;
	
	
	public String getCheckOption() {
		return checkOption;
	}
	public void setCheckOption(String checkOption) {
		this.checkOption = checkOption;
	}
	public Office getOffice() {
		return office;
	}
	public void setOffice(Office office) {
		this.office = office;
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
	public String addOffice() throws Exception{
		office.getUser().setUserType(3);
		//this.userService.saveUser(office.getUser());
		if (this.adminService.findUserByuserName(office.getUser().getUserUsername()))
		{
			this.addFieldError("userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		else{
			this.adminService.saveOffice(office);
			return SUCCESS;
		}
		
	}
	@SuppressWarnings("unchecked")
	public String listOffice() throws Exception{
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("listOffices", this.adminService.findAllOffice());
		return SUCCESS;
	}
	
	public String deleteOffice() throws Exception{
		this.adminService.deleteOffice(office);
		return SUCCESS;
	}
	
	public String editOffice() throws Exception{
		office=this.adminService.findOfficeById(office.getOfficeId());
		return SUCCESS;
	}
	public String updateOffice() throws Exception{
		User user=this.userService.findUserById(office.getUser().getUserId());
    	if (this.adminService.findUserByuserName(office.getUser().getUserUsername()) && !user.getUserUsername().equals(office.getUser().getUserUsername()))
		{		
			this.addFieldError("userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		this.adminService.upateOffice(office);
		return SUCCESS;
	}
	
	public String deleteManyOffice() throws Exception{
		if(checkOption!=null)
		{
		String[] listId=checkOption.split(",");
		for(int i=0;i<listId.length;i++)
		{
			String hql="from Office office where office.officeId="+listId[i];
			Office office=this.adminService.findOfficeByHql(hql).get(0);
			this.adminService.deleteOffice(office);
		}
		return SUCCESS;
		}
		else
			return INPUT;
	}
}
