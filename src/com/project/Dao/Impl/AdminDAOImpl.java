package com.project.Dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.project.Dao.AdminDAO;
import com.project.bean.Department;
import com.project.bean.District;
import com.project.bean.Office;
import com.project.bean.Street;
import com.project.bean.Subdivision;
import com.project.bean.User;

public class AdminDAOImpl extends HibernateDaoSupport implements AdminDAO {

	@Override
	public void saveDepartment(Department department) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(department);
	}

	@Override
	public void saveDistrict(District district) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(district);
	}

	@Override
	public void saveOffice(Office office) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(office);
	}

	@Override
	public void saveStreet(Street street) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(street);
	}

	@Override
	public void upateDepartment(Department department) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(department);
	}

	@Override
	public void upateDistrict(District district) {
		// TODO Auto-generated method stub

	}

	@Override
	public void upateOffice(Office office) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(office);
	}

	@Override
	public void upateStreet(Street street) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(street);
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
		office=this.findOfficeById(office.getOfficeId());
		this.getHibernateTemplate().delete(office);
	}

	@Override
	public void deleteStreet(Street street) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(street);
	}
	@SuppressWarnings("unchecked")
	public List<Department> findAllDepartment(){
		String hql="from Department department order by department.departmentId";
		return (List<Department>)this.getHibernateTemplate().find(hql);
	}
	public List<District> findAllDistrict(){
		return null;
	}
	@SuppressWarnings("unchecked")
	public List<Office> findAllOffice(){
		String hql="from Office office order by office.officeId";
	    return (List<Office>)this.getHibernateTemplate().find(hql);
	}
	@SuppressWarnings("unchecked")
	public List<Street> findAllStreet(){
		String hql="from Street street order by street.streetId";
		return (List<Street>)this.getHibernateTemplate().find(hql);
	}
	
	@SuppressWarnings("unchecked")
	public List<Street> findAllStreetByOfficeId(int officeId){
		String hql="from Street street where street.office.officeId="+officeId+" order by street.streetId";
		return (List<Street>)this.getHibernateTemplate().find(hql);
	}
	
	public Department findDepartmentById(int id){
		return (Department)this.getHibernateTemplate().get(Department.class, id);
	}
	@SuppressWarnings("unchecked")
	public Department findDepartmentByName(String name){
		String hql="from Department department where department.departmentName=?";
		List<Department> list=(List<Department>)this.getHibernateTemplate().find(hql,name);
		return list.get(0);
	}
	
	@SuppressWarnings("unchecked")
	public Department findDepartmentByUserId(int id){
		String hql="from Department department where department.user.userId="+id;
		List<Department> list=(List<Department>)this.getHibernateTemplate().find(hql);
		return list.get(0);
	}
	
	public District findDistrictById(int id){
		return null;
	}
	public Office findOfficeById(int id){
		return (Office)this.getHibernateTemplate().get(Office.class, id);
	}
	public Street findStreetById(int id){
		return this.getHibernateTemplate().get(Street.class, id);
	}
	
	public Street findStreetByName(String name){
		String hql="from Street street where street.streetName=?";
		List list=this.getHibernateTemplate().find(hql,name);
		if(list.size()>0)
		return (Street)list.get(0);
		else
			return null;
	}
	
	public Street findStreetByUserId(int id){
		String hql="from Street street where street.user.userId=?";
		List list=this.getHibernateTemplate().find(hql,id);
		return (Street)list.get(0);
	}
	
	public Office findOfficeByUserId(int id){
		String hql="from Office office where office.user.userId=?";
		List list=this.getHibernateTemplate().find(hql,id);
		return (Office)list.get(0);
	}
	
	public Subdivision findSubdivisionById(int id){
		String hql="from Subdivision subdivision where subdivision.subdivisionId=?";
		List list=this.getHibernateTemplate().find(hql,id);
		return (Subdivision)list.get(0);
	}
	
	public Subdivision findSubdivisionByName(String name){
		String hql="from Subdivision subdivision where subdivision.subdivisionName=?";
		List list=this.getHibernateTemplate().find(hql,name);
		if(list.size()>0)
		return (Subdivision)list.get(0);
		else
			return null;
	}
	
	@SuppressWarnings("unchecked")
	public List<Street> findAllStreetByHql(String hql){
		return (List<Street>)this.getHibernateTemplate().find(hql);
	}
	
	
	@SuppressWarnings("unchecked")
	public boolean findUserByuserName(String name){
		String hql="from User user where user.userUsername=?";
		List<User> list=(List<User>)this.getHibernateTemplate().find(hql,name);
		if(list.size()>0)
			return true;
		else
			return false;
	}
	
	public List<Office> findOfficeByHql(String hql){
		List<Office> list=this.getHibernateTemplate().find(hql);
		return list;
	}
}
