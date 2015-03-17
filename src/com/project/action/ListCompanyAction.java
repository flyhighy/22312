package com.project.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.AdminService;
import com.project.Service.CompanyService;
import com.project.bean.Company;
import com.project.bean.Department;
import com.project.bean.Office;
import com.project.bean.Street;
import com.project.bean.User;
import com.project.javabean.CompanyControl;
import com.project.javabean.PageBean;

public class ListCompanyAction extends ActionSupport {
	private int page;
	private String searching;
	private String streetName;
	private String checkOption;
	private CompanyService companyService;
	private AdminService adminService;
	private CompanyControl companyControl;

	public String getCheckOption() {
		return checkOption;
	}

	public void setCheckOption(String checkOption) {
		this.checkOption = checkOption;
	}

	public CompanyControl getCompanyControl() {
		return companyControl;
	}

	public void setCompanyControl(CompanyControl companyControl) {
		this.companyControl = companyControl;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public CompanyService getCompanyService() {
		return companyService;
	}

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getSearching() {
		return searching;
	}

	public void setSearching(String searching) {
		this.searching = searching;
	}

	public PageBean getPageBean(int pageSize, int page, int allRows, String hql) {
		PageBean pageBean = new PageBean();
		int currentPage = pageBean.getCurPage(page);
		int totalPage = pageBean.getTotalPages(pageSize, allRows);
		int offset = pageBean.getCurrentPageOffset(pageSize, currentPage);
		List<Company> list = this.companyService.queryByPage(offset, pageSize,
				hql);
		pageBean.setCompanylist(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		return pageBean;
	}

	public PageBean getRequestPageBean(int pageSize, int page, int allRows,
			CompanyControl companyControl) {
		PageBean pageBean = new PageBean();
		int currentPage = pageBean.getCurPage(page);
		int totalPage = pageBean.getTotalPages(pageSize, allRows);
		int offset = pageBean.getCurrentPageOffset(pageSize, currentPage);
		List<Company> list = this.companyService.PageByRequest(companyControl,
				offset, pageSize);
		pageBean.setCompanylist(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		return pageBean;
	}

	// �ֵ���鿴��ҵ
	@SuppressWarnings("unchecked")
	public String officeView() throws Exception {
		Map session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		Office office = this.adminService.findOfficeByUserId(user.getUserId());
		session.put("listStreet",
				this.adminService.findAllStreetByOfficeId(office.getOfficeId()));

		int allRows = this.companyService.findCompanysByStreetAndOffice(
				office.getOfficeId()).size();
		String hql = "from Company company where company.street.office.officeId="
				+ office.getOfficeId();
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "listCompany");

		return SUCCESS;
	}

	// �鿴������ҵ
	public String adminView() throws Exception {
		int allRows = this.companyService.findAll().size();
		String hql = "from Company";
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);

		List<Office> listOffice = this.adminService.findAllOffice();
		request.setAttribute("listOffice", listOffice);

		request.setAttribute("action", "listAllCompany");
		return SUCCESS;
	}

	// ���Ų鿴��ҵ
	public String departmentView() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Department department = this.adminService.findDepartmentByUserId(user
				.getUserId());

		String hql = "from Company company where company.subdivision.department.departmentId="
				+ department.getDepartmentId();
		int allRows = this.companyService.findByHql(hql).size();

		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);

		List<Office> listOffice = this.adminService.findAllOffice();
		request.setAttribute("listOffice", listOffice);

		request.setAttribute("action", "listDepartmentCompany");
		return SUCCESS;
	}

	// ɸѡ��ҵ
	@SuppressWarnings("unchecked")
	public String searchCompany() throws Exception {
		Map session = ActionContext.getContext().getSession();
		User user = (User) session.get("user");
		Office office = this.adminService.findOfficeByUserId(user.getUserId());
		ActionContext.getContext().getSession().put("office", office);
		companyControl.setOfficeId(office.getOfficeId());

		int allRows = this.companyService.findByRequest(companyControl).size();
		PageBean pageBean = getRequestPageBean(11, page, allRows,
				companyControl);

		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "searchCompany");

		return SUCCESS;
	}

	// �ܼ��Աɸѡ��ҵ
	public String adminSearchCompany() throws Exception {

		if (!streetName.equals("all"))
			companyControl.setStreetId(this.adminService.findStreetByName(
					streetName).getStreetId());
		else
			companyControl.setStreetId(-1);
		int allRows = this.companyService.findByRequest(companyControl).size();
		PageBean pageBean = getRequestPageBean(11, page, allRows,
				companyControl);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("companyControl", companyControl);

		List<Office> listOffice = this.adminService.findAllOffice();
		request.setAttribute("listOffice", listOffice);

		request.setAttribute("action", "adminSearchCompany");
		return SUCCESS;
	}

	// ���ż��Աɸѡ��ҵ
	public String departmentSearchCompany() throws Exception {

		if (!streetName.equals("all"))
			companyControl.setStreetId(this.adminService.findStreetByName(
					streetName).getStreetId());
		else
			companyControl.setStreetId(-1);
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Department department = this.adminService.findDepartmentByUserId(user
				.getUserId());
		companyControl.setDepartmentId(department.getDepartmentId());

		int allRows = this.companyService.findByRequest(companyControl).size();
		PageBean pageBean = getRequestPageBean(11, page, allRows,
				companyControl);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("companyControl", companyControl);

		List<Office> listOffice = this.adminService.findAllOffice();
		request.setAttribute("listOffice", listOffice);
		request.setAttribute("action", "departmentSearchCompany");
		return SUCCESS;
	}

	// ���Ա�鿴��ҵ
	public String streetViewCompany() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Street street = this.adminService.findStreetByUserId(user.getUserId());
		int allRows = this.companyService.findCompanysByStreet(
				street.getStreetId()).size();
		String hql = "from Company company where company.street.streetId="
				+ street.getStreetId();
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "historyList");
		if (allRows > 0)
			return SUCCESS;
		return INPUT;
	}

	// ���Աɸѡ
	public String checkSearchCompany() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Street street = this.adminService.findStreetByUserId(user.getUserId());
		companyControl.setCompanyCondition("all");

		companyControl.setDepartmentId(-1);
		companyControl.setOfficeId(-1);
		companyControl.setStreetId(street.getStreetId());
		int allRows = this.companyService.findByRequest(companyControl).size();
		PageBean pageBean = getRequestPageBean(11, page, allRows,
				companyControl);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "streetSearchCompany");
		return SUCCESS;
	}

	// δ�����ҵ
	public String uncheckedCompany() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Street street = this.adminService.findStreetByUserId(user.getUserId());

		String hql = "from Company company where company.street.streetId="
				+ street.getStreetId();
		hql += " and company.companyTime=" + "'"
				+ this.companyService.getDate() + "'";
		int allRows = this.companyService.findByHql(hql).size();
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "uncheckedCompany");
		if (allRows > 0)
			return SUCCESS;
		return INPUT;
	}

	// �ܼ��Ա��ȷ������ҵ
	public String adminQuickSerach() throws Exception {
		String hql = hql = "from Company company where company.companyName like "
				+ "'%"
				+ searching
				+ "%'"
				+ " or "
				+ "company.user.userUsername like " + "'%" + searching + "%'";
		int allRows = this.companyService.findByHql(hql).size();
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "adminQuickSerach");
		return SUCCESS;
	}

	// ���ž�ȷ������ҵ
	public String departmentQuickSerach() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Department department = this.adminService.findDepartmentByUserId(user
				.getUserId());

		String hql = hql = "from Company company where company.subdivision.department.departmentId= "
				+ department.getDepartmentId()
				+ " and (company.companyName like "
				+ "'%"
				+ searching
				+ "%'"
				+ " or "
				+ "company.user.userUsername like "
				+ "'%"
				+ searching
				+ "%')";
		int allRows = this.companyService.findByHql(hql).size();
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "departmentQuickSerach");
		return SUCCESS;
	}

	// �ֵ��쾫ȷ������ҵ
	public String officeQuickSerach() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Office office = this.adminService.findOfficeByUserId(user.getUserId());

		String hql = hql = "from Company company where company.street.office.officeId= "
				+ office.getOfficeId()
				+ " and (company.companyName like "
				+ "'%"
				+ searching
				+ "%'"
				+ " or "
				+ "company.user.userUsername like " + "'%" + searching + "%')";
		int allRows = this.companyService.findByHql(hql).size();
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "officeQuickSerach");
		return SUCCESS;
	}

	// ���Ա��ȷ������ҵ
	public String streetQuickSerach() throws Exception {
		Map map = ActionContext.getContext().getSession();
		User user = (User) map.get("user");
		Street street = this.adminService.findStreetByUserId(user.getUserId());

		String hql = hql = "from Company company where company.street.streetId= "
				+ street.getStreetId()
				+ " and (company.companyName like "
				+ "'%"
				+ searching
				+ "%'"
				+ " or "
				+ "company.user.userUsername like " + "'%" + searching + "%')";
		int allRows = this.companyService.findByHql(hql).size();
		PageBean pageBean = getPageBean(11, page, allRows, hql);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("action", "streetQuickSerach");
		return SUCCESS;
	}

	// ����ɾ��
	public String deleteMany() throws Exception {
		if (checkOption != null) {
			String[] listId = checkOption.split(",");
			for (int i = 0; i < listId.length; i++) {
				String hql = "from Company company where company.companyId="
						+ listId[i];
				Company company = this.companyService.findByHql(hql).get(0);
				this.companyService.deleteCompany(company);
			}
			return SUCCESS;
		} else
			return INPUT;
	}
}
