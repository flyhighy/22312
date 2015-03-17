package com.project.ajax;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionSupport;

public class ajaxAction extends ActionSupport{
	private ajaxServlet ajax = new ajaxServlet();
	private HttpServletRequest request;
	HttpServletResponse response;
	public String execute()throws Exception{
		request = ServletActionContext.getRequest();
		response =  ServletActionContext.getResponse();
		ajax.doGet(request, response);
		return "success";
	}

}
