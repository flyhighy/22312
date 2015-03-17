package com.project.action;

import java.util.Date;
import java.util.Map;

import javax.annotation.processing.SupportedSourceVersion;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.AdminService;
import com.project.Service.CompanyService;
import com.project.Service.UserService;
import com.project.bean.Company;
import com.project.bean.Department;
import com.project.bean.Office;
import com.project.bean.User;
import com.project.javabean.CompanyControl;

public class ManageCompanyAction extends ActionSupport {
	private Company company;
	private CompanyControl companyControl; 
	private String departmentName;
	private AdminService adminService;
	private UserService userService;
	private CompanyService companyService;
	
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	
	
	public CompanyControl getCompanyControl() {
		return companyControl;
	}
	public void setCompanyControl(CompanyControl companyControl) {
		this.companyControl = companyControl;
	}
	public CompanyService getCompanyService() {
		return companyService;
	}
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
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
	//增加企业
	public String addCompany()throws Exception{
		company.getUser().setUserType(5);
		//this.userService.saveUser(company.getUser());
	
		Department department=this.adminService.findDepartmentByName(departmentName);
		company.getSubdivision().setDepartment(department);
		company.setCompanyCustodian(company.getUser().getUserName());
		
		Map map=ActionContext.getContext().getSession();
		User user=(User)map.get("user");
		Office office=this.adminService.findOfficeByUserId(user.getUserId());
		company.getStreet().setOffice(office);
		
		company.setStreet(this.adminService.findStreetById(company.getStreet().getStreetId()));
		company.setSubdivision(this.adminService.findSubdivisionById(company.getSubdivision().getSubdivisionId()));
		
		Date date;
		date=this.companyService.AddDate(company.getCompanyDanger());
		company.setCompanyTime(date);
		company.setCompanyCondition("合格");
		
		if (this.adminService.findUserByuserName(company.getUser().getUserUsername()))
		{		
			this.addFieldError("company.userUsername", "企业工商号已存在，请重新输入！");
			return INPUT;
		}
		this.companyService.saveCompany(company);
		return SUCCESS;
	}

	//删除企业
	public String deleteCompany()throws Exception{
		company=this.companyService.findCompanyById(company.getCompanyId());
		this.companyService.deleteCompany(company);
		return SUCCESS;
	}
	//编辑企业
	@SuppressWarnings("unchecked")
	public String editCompany()throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		Office office=this.adminService.findOfficeByUserId(user.getUserId());
		//Map request=(Map)ActionContext.getContext().get("request");
		session.put("listStreet", this.adminService.findAllStreetByOfficeId(office.getOfficeId()));
		company=this.companyService.findCompanyById(company.getCompanyId());
		session.put("company", company);
		return SUCCESS;
	}
	//更新企业信息
	public String updateCompany()throws Exception{
        User user=this.userService.findUserById(company.getUser().getUserId());
		if (this.adminService.findUserByuserName(company.getUser().getUserUsername()) && !user.getUserUsername().equals(company.getUser().getUserUsername()))
		{		
			this.addFieldError("company.userUsername", "企业工商号已存在，请重新输入！");
			return INPUT;
		}
		this.companyService.updateCompany(company);
		return SUCCESS;
	}
	
	
}
