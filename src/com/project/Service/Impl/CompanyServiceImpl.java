package com.project.Service.Impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;

import com.opensymphony.xwork2.ActionContext;
import com.project.Dao.CompanyDAO;
import com.project.Service.CompanyService;
import com.project.bean.Company;
import com.project.bean.Office;
import com.project.javabean.CompanyControl;

public class CompanyServiceImpl implements CompanyService {

	private CompanyDAO companydao;

	public CompanyDAO getCompanydao() {
		return companydao;
	}

	public void setCompanydao(CompanyDAO companydao) {
		this.companydao = companydao;
	}

	@Override
	public void saveCompany(Company company) {
		// TODO Auto-generated method stub
		this.companydao.saveCompany(company);
	}

	@Override
	public void deleteCompany(Company company) {
		// TODO Auto-generated method stub
		this.companydao.deleteCompany(company);
	}

	@Override
	public void updateCompany(Company company) {
		// TODO Auto-generated method stub
		this.companydao.updateCompany(company);
	}

	@Override
	public Company findCompanyById(int id) {
		// TODO Auto-generated method stub
		return this.companydao.findCompanyById(id);
	}
	public Company findCompanyByUserId(int id){
		return this.companydao.findCompanyByUserId(id);
	}

	@Override
	public List<Company> findAll() {
		// TODO Auto-generated method stub
		return this.companydao.findAll();
	}

	@Override
	public List<Company> findByRequest(CompanyControl companyControl) {
		// TODO Auto-generated method stub
		return this.companydao.findByRequest(companyControl);
	}

	public List<Company> PageByRequest(CompanyControl companyControl,
			int offset, int pageSize) {
		return this.companydao.PageByRequest(companyControl, offset, pageSize);
	}

	public List<Company> findCompanysByStreetAndOffice(int officeId) {
		return this.companydao.findCompanysByStreetAndOffice(officeId);
	}

	public List<Company> findCompanysByStreet(int streetId) {
		return this.companydao.findCompanysByStreet(streetId);
	}

	public InputStream getInputStream() {
		HSSFWorkbook wb1 = new HSSFWorkbook();
		HSSFSheet sheet1 = wb1.createSheet("sheet1");

		HSSFRow row1 = sheet1.createRow(0);

		HSSFCell cell1 = row1.createCell((short) 0);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("序号");

		cell1 = row1.createCell((short) 1);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("企业工商号");

		cell1 = row1.createCell((short) 2);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("企业名称");

		cell1 = row1.createCell((short) 3);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("所属部门");

		cell1 = row1.createCell((short) 4);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("企业类型");

		cell1 = row1.createCell((short) 5);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("所属街道");
		
		cell1 = row1.createCell((short) 6);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("企业面积");

		cell1 = row1.createCell((short) 7);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("危险等级");

		cell1 = row1.createCell((short) 8);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("负责人");

		cell1 = row1.createCell((short) 9);
		// /cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("负责人职位");

		cell1 = row1.createCell((short) 10);
		// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
		cell1.setCellValue("电话");

		Map map = ActionContext.getContext().getSession();
		Office office = (Office) map.get("office");

		List<Company> list = this.findCompanysByStreetAndOffice(office
				.getOfficeId());
		
		for (int i = 0; i < list.size(); ++i) {

			Company company = list.get(i);
			row1 = sheet1.createRow(i + 1);

			cell1 = row1.createCell((short) 0);
			cell1.setCellValue(i + 1);

			cell1 = row1.createCell((short) 1);
			// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getUser().getUserUsername());

			cell1 = row1.createCell((short) 2);
			// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getCompanyName());

			cell1= row1.createCell((short) 3);
			// / cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getSubdivision().getDepartment()
					.getDepartmentName());

			cell1 = row1.createCell((short) 4);
			// / cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getSubdivision().getSubdivisionName());

			cell1 = row1.createCell((short) 5);
			// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getStreet().getStreetName());
			
			cell1 = row1.createCell((short) 6);
			// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getCompanyArea());

			cell1 = row1.createCell((short) 7);
			// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getCompanyDanger());

			cell1 = row1.createCell((short) 8);
			// cell.setEncoding(HSSFCell.ENCODING_UTF_16);
			cell1.setCellValue(company.getUser().getUserName());


			cell1 = row1.createCell((short) 9);

			cell1.setCellValue(company.getCompanyPosition());


			cell1 = row1.createCell((short) 10);
			// cell.setEncoding(HSSFCell.ENCODING_UTF_16);

			cell1.setCellValue(company.getUser().getUserPhone());
		}

		File file = new File("test.xls");

		try {
			OutputStream os = new FileOutputStream(file);
			wb1.write(os);
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		InputStream is = null;
		try {
			is = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return is;
	}

	public Date AddDate(String danger) {
		long day;
		if (danger.equals("红"))
			day = 3;
		else if (danger.equals("黄"))
			day = 5;
		else
			day = 10;
		Date d = new Date();
		long time = d.getTime();
		day = day * 24 * 60 * 60 * 1000;
		time += day;
		return new Date(time);
	}
	
	public Date reviewDate(long  day) {
		Date d = new Date();
		long time = d.getTime();
		day = day * 24 * 60 * 60 * 1000;
		time += day;
		return new Date(time);
	}

	public String getDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String time = format.format(now); 
		return time;
	}

	public String getCellString(Cell cell) {
		String value = "";
		// 检查列类型
		switch (cell.getCellType()) {
		case HSSFCell.CELL_TYPE_STRING:// 字符串
			value = cell.getRichStringCellValue().getString();
			break;
		case HSSFCell.CELL_TYPE_NUMERIC:// 数字
			value = new Integer((int) cell.getNumericCellValue()).toString();
			break;
		case HSSFCell.CELL_TYPE_BLANK:
			value = "";
			break;
		case HSSFCell.CELL_TYPE_FORMULA:
			value = String.valueOf(cell.getCellFormula());
			break;
		case HSSFCell.CELL_TYPE_BOOLEAN:// boolean型值
			value = String.valueOf(cell.getBooleanCellValue());
			break;
		case HSSFCell.CELL_TYPE_ERROR:
			value = String.valueOf(cell.getErrorCellValue());
			break;
		default:
			break;
		}
		return value;
	}

	public List<Company> findAllCompany() {
		return this.companydao.findAllCompany();
	}

	public List<Company> queryByPage(int offset, int pageSize, String hql) {
		return this.companydao.queryByPage(offset, pageSize, hql);
	}

	public List<Company> findByHql(String hql) {
		return this.companydao.findByHql(hql);
	}

}
