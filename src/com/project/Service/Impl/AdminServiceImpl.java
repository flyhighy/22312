package com.project.Service.Impl;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.project.Dao.AdminDAO;
import com.project.Service.AdminService;
import com.project.bean.Department;
import com.project.bean.District;
import com.project.bean.Office;
import com.project.bean.Street;
import com.project.bean.Subdivision;

public class AdminServiceImpl implements AdminService {
    private AdminDAO admindao;
    
	public AdminDAO getAdmindao() {
		return admindao;
	}

	public void setAdmindao(AdminDAO admindao) {
		this.admindao = admindao;
	}

	@Override
	public void saveDepartment(Department department) {
		// TODO Auto-generated method stub
		this.admindao.saveDepartment(department);
	}

	@Override
	public void saveDistrict(District district) {
		// TODO Auto-generated method stub

	}

	@Override
	public void saveOffice(Office office) {
		// TODO Auto-generated method stub
		this.admindao.saveOffice(office);
	}

	@Override
	public void saveStreet(Street street) {
		// TODO Auto-generated method stub
		this.admindao.saveStreet(street);
	}

	@Override
	public void upateDepartment(Department department) {
		// TODO Auto-generated method stub
		this.admindao.upateDepartment(department);
	}

	@Override
	public void upateDistrict(District district) {
		// TODO Auto-generated method stub

	}

	@Override
	public void upateOffice(Office office) {
		// TODO Auto-generated method stub
		this.admindao.upateOffice(office);
	}

	@Override
	public void upateStreet(Street street) {
		// TODO Auto-generated method stub
		this.admindao.upateStreet(street);
	}

	@Override
	public void deleteDepartment(Department department) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteDistrict(District district) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteOffice(Office office) {
		// TODO Auto-generated method stub
		this.admindao.deleteOffice(office);
	}

	@Override
	public void deleteStreet(Street street) {
		// TODO Auto-generated method stub
		this.admindao.deleteStreet(street);
	}
	@SuppressWarnings("unchecked")
	public List<Department> findAllDepartment(){
		return this.admindao.findAllDepartment();
	}
	public List<District> findAllDistrict(){
		return null;
	}
	public List<Office> findAllOffice(){
		return this.admindao.findAllOffice();
	}
	public List<Street> findAllStreet(){
		return this.admindao.findAllStreet();
	}
	
	
	public List<Street> findAllStreetByOfficeId(int officeId){
		return this.admindao.findAllStreetByOfficeId(officeId);
	}
	
	public Department findDepartmentById(int id){
		return this.admindao.findDepartmentById(id);
	}
	
	public Department findDepartmentByName(String name){
		return this.admindao.findDepartmentByName(name);
	}
	
	public Department findDepartmentByUserId(int id){
		return this.admindao.findDepartmentByUserId(id);
	}
	
	public District findDistrictById(int id){
		return null;
	}
	public Office findOfficeById(int id){
		return this.admindao.findOfficeById(id);
	}
	public Street findStreetById(int id){
		return this.admindao.findStreetById(id);
	}
	public Street findStreetByName(String name){
		return (Street)this.admindao.findStreetByName(name);
	}
	
	public Street findStreetByUserId(int id){
		return this.admindao.findStreetByUserId(id);
	}
	
	public Office findOfficeByUserId(int id){
		Office office=this.admindao.findOfficeByUserId(id);
		ActionContext.getContext().getSession().put("office", office);
		return office;
	}
	
	public Subdivision findSubdivisionById(int id){
		return this.admindao.findSubdivisionById(id);
	}
	
	public Subdivision findSubdivisionByName(String name){
		return this.admindao.findSubdivisionByName(name);
	}
	public List<Street> findAllStreetByHql(String hql){
		return this.admindao.findAllStreetByHql(hql);
	}
	
	public boolean findUserByuserName(String name){
		return this.admindao.findUserByuserName(name);
	}
	public List<Office> findOfficeByHql(String hql){
		return this.admindao.findOfficeByHql(hql);
	}
}
