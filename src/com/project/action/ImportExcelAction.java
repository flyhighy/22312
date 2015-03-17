/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.project.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.project.Service.AdminService;
import com.project.Service.CompanyService;
import com.project.bean.Company;
import com.project.bean.User;



public class ImportExcelAction extends ActionSupport{
    private File excelFile;
    private String excelFileFileName;
    private CompanyService companyService;
    private AdminService  adminService;



    private Workbook createWorkBook(InputStream is) throws Exception{
        if(getExcelFileFileName().toLowerCase().endsWith("xls")){
            return new HSSFWorkbook(is);
        }
        if(getExcelFileFileName().toLowerCase().endsWith("xlsx"))
        {
            return new XSSFWorkbook(is);
        }
        return null;
    }
    
    
    public ImportExcelAction() {
    }
    
    @SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
       Workbook workbook=createWorkBook(new FileInputStream(excelFile));
       Sheet sheet=(Sheet) workbook.getSheetAt(0);
       List<String> errorList=new ArrayList<String>();
    
        for (int i = 1; i <=sheet.getLastRowNum(); i++) {
        	String message="";//������Ϣ
        	Company company=new Company();
        	User user =new User();
            Row row=sheet.getRow(i);     
            
            if(this.companyService.getCellString(row.getCell(0)).equals(""))
            	break;
            //��ȡÿ������
            user.setUserUsername(this.companyService.getCellString(row.getCell(0)));
    		if (this.adminService.findUserByuserName(this.companyService.getCellString(row.getCell(0))))
    		{
    		    message="��"+i+"�У���ҵ���̺�: "+user.getUserUsername()+" �Ѵ���!";
    		    errorList.add(message);
    		    continue;
    		}
            company.setCompanyName(this.companyService.getCellString(row.getCell(1)));
            
            //�ж���ҵ�����Ƿ����
    		if (this.adminService.findSubdivisionByName(this.companyService.getCellString(row.getCell(3)))==null)
    		{
    		    message="��"+i+"�У���˾����  "+this.companyService.getCellString(row.getCell(3))+" ������!";
    		    errorList.add(message);
    		    continue;
    		}
     
            company.setSubdivision(this.adminService.findSubdivisionByName(this.companyService.getCellString(row.getCell(3))));
           
            //�жϽֵ��Ƿ����
    		if (this.adminService.findStreetByName(this.companyService.getCellString(row.getCell(4)))==null)
    		{
    		    message="��"+i+"�У������ֵ� "+this.companyService.getCellString(row.getCell(4))+" ������!";
    		    errorList.add(message);
    		    continue;
    		}
    		
            company.setStreet(this.adminService.findStreetByName(this.companyService.getCellString(row.getCell(4))));  
            company.setCompanyArea(row.getCell(5).getNumericCellValue());
            company.setCompanyDanger(this.companyService.getCellString(row.getCell(6)));
            company.setCompanyCustodian(this.companyService.getCellString(row.getCell(7)));
            company.setCompanyPosition(this.companyService.getCellString(row.getCell(8)));
            user.setUserPassword("888888");
            user.setUserName(this.companyService.getCellString(row.getCell(7)));
            user.setUserPhone(this.companyService.getCellString(row.getCell(9)));
            
            //�����û�����
            user.setUserType(5);
            company.setUser(user);
            //���ù�˾����
            Date date;
    		date=this.companyService.AddDate(company.getCompanyDanger());
    		company.setCompanyTime(date);
    		company.setCompanyCondition("�ϸ�");
    		if (errorList.size()>0)
    		{
    		   continue;
    		}
    		else
                this.companyService.saveCompany(company);
        }
        if(errorList.size()>0)
        {
        	Map request=(Map)ActionContext.getContext().get("request");
        	request.put("errorList", errorList);
        	return INPUT;
        }
        return SUCCESS;
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
	
	




	/**
     * @return the excelFile
     */
    public File getExcelFile() {
        return excelFile;
    }

    /**
     * @param excelFile the excelFile to set
     */
    public void setExcelFile(File excelFile) {
        this.excelFile = excelFile;
    }

 

    /**
     * @return the excelFileFileName
     */
    public String getExcelFileFileName() {
        return excelFileFileName;
    }

    /**
      @param excelFileFileName the excelFileFileName to set
     */
    public void setExcelFileFileName(String excelFileFileName) {
        this.excelFileFileName = excelFileFileName;
    }
}
