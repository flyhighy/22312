package com.project.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.AdminService;
import com.project.Service.UserService;
import com.project.bean.Company;
import com.project.bean.Office;
import com.project.bean.Street;
import com.project.bean.User;

public class ManageStreetAction extends ActionSupport{
	private Street street;
	private int userId;
	private String checkOption;
	private AdminService adminService;
	private UserService userService;
	
	
	public String getCheckOption() {
		return checkOption;
	}
	public void setCheckOption(String checkOption) {
		this.checkOption = checkOption;
	}
	public Street getStreet() {
		return street;
	}
	public void setStreet(Street street) {
		this.street = street;
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	
	public String addStreet()throws Exception{
		Office office=this.adminService.findOfficeByUserId(this.getUserId());
		ActionContext.getContext().getSession().put("office", office);
		street.setOffice(office);
		street.getUser().setUserType(4);
		if (this.adminService.findUserByuserName(street.getUser().getUserUsername()))
		{		
			this.addFieldError("userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		else
		{
		this.userService.saveUser(street.getUser());
		this.adminService.saveStreet(street);
		return SUCCESS;
		}
	}
	
	@SuppressWarnings("unchecked")
	public String listStreet()throws Exception{
		Map map=ActionContext.getContext().getSession();
		User user=(User)map.get("user");
		Office office=this.adminService.findOfficeByUserId(user.getUserId());
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("listStreet", this.adminService.findAllStreetByOfficeId(office.getOfficeId()));
		return SUCCESS;
	}
	
	public String deleteStreet()throws Exception{
		street=this.adminService.findStreetById(street.getStreetId());
		this.adminService.deleteStreet(street);
		return SUCCESS;
	}
	
	public String editStreet()throws Exception{
		street=this.adminService.findStreetById(street.getStreetId());
		return SUCCESS;
	}
	
	public String updateStreet()throws Exception{
		User user=this.userService.findUserById(street.getUser().getUserId());
		if (this.adminService.findUserByuserName(user.getUserUsername()) && !user.getUserUsername().equals(street.getUser().getUserUsername()))
		{		
			this.addFieldError("userUsername", "该账号已存在，请重新输入！");
			return INPUT;
		}
		else{
		this.adminService.upateStreet(street);
		return SUCCESS;
		}
	}
	@SuppressWarnings("unchecked")
	public String getStreets()throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		Office office=this.adminService.findOfficeByUserId(user.getUserId());
		Map request=(Map)ActionContext.getContext().get("request");
		session.put("listStreet", this.adminService.findAllStreetByOfficeId(office.getOfficeId()));
		return SUCCESS;
	}
	
	public String deleteManyStreet() throws Exception{
		if(checkOption!=null)
		{
		String[] listId=checkOption.split(",");
		for(int i=0;i<listId.length;i++)
		{
			String hql="from Street street where street.streetId="+listId[i];
			Street street=this.adminService.findAllStreetByHql(hql).get(0);
			this.adminService.deleteStreet(street);
		}
		return SUCCESS;
		}
		else
			return INPUT;
	}
	
}
