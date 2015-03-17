package com.project.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Dao.CheckListDAO;
import com.project.Service.AdminService;
import com.project.Service.CheckListService;
import com.project.Service.CompanyService;
import com.project.bean.CheckList;
import com.project.bean.Company;
import com.project.bean.User;

public class ManageCheckformAction extends ActionSupport {
	private Company company;
	private CheckList checkList;
	private String checkListDate;
	private int days = 0;
	private CompanyService companyService;
	private AdminService adminService;
	private CheckListService checkListervice;

	public String getCheckListDate() {
		return checkListDate;
	}

	public void setCheckListDate(String checkListDate) {
		this.checkListDate = checkListDate;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public CheckList getCheckList() {
		return checkList;
	}

	public void setCheckList(CheckList checkList) {
		this.checkList = checkList;
	}

	public CheckListService getCheckListervice() {
		return checkListervice;
	}

	public void setCheckListervice(CheckListService checkListervice) {
		this.checkListervice = checkListervice;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
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

	@SuppressWarnings("unchecked")
	public String fillForm() throws Exception {
		company = this.companyService.findCompanyById(company.getCompanyId());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("company", company);
		return company.getSubdivision().getSubdivisionId().toString();
	}

	public String saveForm() throws Exception {

		company = this.companyService.findCompanyById(checkList.getCompany()
				.getCompanyId());
		checkList.setCompany(company);

		checkList.setListTime(new Date());
		if (days > 0) {
			checkList.setListResult((short) 0);
			company.setCompanyCondition("不合格");
			company.setCompanyTime(this.companyService.reviewDate(days));
			this.companyService.updateCompany(company);
		} else {
			company.setCompanyCondition("合格");
			company.setCompanyTime(this.companyService.AddDate(company
					.getCompanyDanger()));
			this.companyService.updateCompany(company);
			checkList.setListResult((short) 1);
		}

		checkList.setListAccount(1);
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		checkList.setUser(user);

		this.checkListervice.saveCheckList(checkList);
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String viewHistoryForm() throws Exception {
		company = this.companyService.findCompanyById(company.getCompanyId());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("company", company);
		String hql = "from CheckList checkList where checkList.company.companyId="
				+ company.getCompanyId();
		checkList = this.checkListervice.findCheckListByHql(hql);
		request.put("checkList", checkList);
		if (checkList != null)
			return company.getSubdivision().getSubdivisionId().toString();
		return INPUT;
	}

	@SuppressWarnings("unchecked")
	public String selfHistoryForm() throws Exception {
		Map map = ActionContext.getContext().getSession();
		Map request = (Map) ActionContext.getContext().get("request");
		User user = (User) map.get("user");
		company = this.companyService.findCompanyByUserId(user.getUserId());

		String hql = "from CheckList checkList where checkList.company.companyId="
				+ company.getCompanyId();
		checkList = this.checkListervice.findCheckListByHql(hql);
		return company.getSubdivision().getSubdivisionId().toString();
	}

	public String viewMessage() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		company = this.companyService.findCompanyByUserId(user.getUserId());
		if (company.getCompanyCondition().equals("合格"))
			return "good";
		else
			return "bad";
	}

	// 定位某个公司某天的检查表
	public String LocateCheckList() throws Exception {
		company = this.companyService.findCompanyById(company.getCompanyId());
		String hql = "from CheckList checkList where checkList.company.companyId="
				+ company.getCompanyId()
				+ " and checkList.listTime="
				+ "'"
				+ this.checkListDate + "'";
		checkList = this.checkListervice.findCheckListByHql(hql);
		if (checkList == null)
			return INPUT;
		else
			return company.getSubdivision().getSubdivisionId().toString();
	}

}
