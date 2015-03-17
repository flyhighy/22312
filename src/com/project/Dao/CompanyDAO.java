package com.project.Dao;

import java.util.List;

import com.project.bean.Company;
import com.project.javabean.CompanyControl;

public interface CompanyDAO {
	public void saveCompany(Company company);
	public void deleteCompany(Company company);
	public void updateCompany(Company company);
	public Company findCompanyById(int id);
	public Company findCompanyByUserId(int id);
	public List<Company> findAll();
	public List<Company> findByHql(String hql);
	public List<Company> findByRequest(CompanyControl companyControl);
	public List<Company> PageByRequest(CompanyControl companyContro,int offset, int pageSize);
	public List<Company> findCompanysByStreetAndOffice(int officeId);
	public List<Company> findCompanysByStreet(int streetId);
	public List<Company> findAllCompany();
	public List<Company> queryByPage(int offset, int pageSize,String hql);
	
}
