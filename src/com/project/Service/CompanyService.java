package com.project.Service;

import java.io.InputStream;
import java.util.Date;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;

import com.project.bean.Company;
import com.project.javabean.CompanyControl;

public interface CompanyService {
	public void saveCompany(Company company);
	public void deleteCompany(Company company);
	public void updateCompany(Company company);
	public Company findCompanyById(int id);
	public Company findCompanyByUserId(int id);
	public List<Company> findAll();
	public List<Company> findByHql(String hql);
	
	public List<Company> findCompanysByStreetAndOffice(int officeId);
	public List<Company> findCompanysByStreet(int streetId);
	public List<Company> findByRequest(CompanyControl companyControl);
	public List<Company> PageByRequest(CompanyControl companyControl,int offset, int pageSize);
	public InputStream getInputStream();
	///public void importCompany();
	public Date AddDate(String danger);
	public String getDate();
	public Date reviewDate(long  day);
	public  String getCellString(Cell cell);
	
	public List<Company> findAllCompany();
	public List<Company> queryByPage(int offset, int pageSize,String hql);
}
