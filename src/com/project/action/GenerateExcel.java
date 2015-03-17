package com.project.action;

import java.io.InputStream;

import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.CompanyService;


public class GenerateExcel extends ActionSupport {
	public CompanyService companyService;

	
	public CompanyService getCompanyService() {
		return companyService;
	}


	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	public InputStream getDownloadFile(){
		return this.companyService.getInputStream();
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	
}
