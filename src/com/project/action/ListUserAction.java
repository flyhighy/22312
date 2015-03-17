package com.project.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.UserService;
import com.project.bean.User;

public class ListUserAction extends ActionSupport {
	private UserService userService;
	private User user;
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
	@SuppressWarnings("unchecked")
	public String ListZUsers() throws Exception {
		//System.out.print("---------------"+user.getUserType()+"--------------");
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("list",this.userService.findUsersByUserType(1));
		
		return SUCCESS;
	}
}
