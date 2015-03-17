package com.project.Dao;

import java.util.List;

import com.project.bean.Department;
import com.project.bean.District;
import com.project.bean.Office;
import com.project.bean.Street;
import com.project.bean.Subdivision;

public interface AdminDAO {
	//保存管理员
	public void saveDepartment(Department department);
	public void saveDistrict(District district);
	public void saveOffice(Office office);
	public void saveStreet(Street street);
	//更新管理员
	public void upateDepartment(Department department);
	public void upateDistrict(District district);
	public void upateOffice(Office office);
	public void upateStreet(Street street);

	//删除管理员
	public void deleteDepartment(Department department);
	public void deleteDistrict(District district);
	public void deleteOffice(Office office);
	public void deleteStreet(Street street);
	//列出全部
	public List<Department> findAllDepartment();
	public List<District> findAllDistrict();
	public List<Office> findAllOffice();
	public List<Street> findAllStreet();
	public List<Street> findAllStreetByHql(String hql);
	public List<Street> findAllStreetByOfficeId(int officeId);
	//查找
	public Department findDepartmentById(int id);
	public Department findDepartmentByUserId(int id);
	public Department findDepartmentByName(String name);
	public District findDistrictById(int id);
	public Office findOfficeById(int id);
	public List<Office> findOfficeByHql(String hql);
	public Street findStreetById(int id);
	public Street findStreetByName(String name);
	public Subdivision findSubdivisionById(int id);
	public Subdivision findSubdivisionByName(String name);
	
	public Office findOfficeByUserId(int id);
	public Street findStreetByUserId(int id);
	public boolean findUserByuserName(String name);
}
