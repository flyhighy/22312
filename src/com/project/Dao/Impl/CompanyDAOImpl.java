package com.project.Dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.project.Dao.CompanyDAO;
import com.project.bean.Company;
import com.project.javabean.CompanyControl;

public class CompanyDAOImpl extends HibernateDaoSupport implements CompanyDAO {

	@Override
	public void saveCompany(Company company) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(company);
	}

	@Override
	public void deleteCompany(Company company) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(company);
	}

	@Override
	public void updateCompany(Company company) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(company);
	}

	@Override
	public Company findCompanyById(int id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Company.class, id);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Company> findAll() {
		// TODO Auto-generated method stub
		String hql="from Company company order by company.companyId";
		return (List<Company>)this.getHibernateTemplate().find(hql);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Company> findByRequest(CompanyControl companyControl){
		// TODO Auto-generated method stub
		String hql="from Company company where";
		if(companyControl.getDepartmentId()!=-1)
			hql+=" company.subdivision.department.departmentId="+companyControl.getDepartmentId()+" and";
		if(companyControl.getOfficeId()!=-1)
			hql+=" company.street.office.officeId="+companyControl.getOfficeId()+" and";
		if(companyControl.getStreetId()!=-1)
			hql+=" company.street.streetId="+companyControl.getStreetId()+" and";
		if(!companyControl.getCompanyDanger().equals("all"))
			hql+=" company.companyDanger="+"'"+companyControl.getCompanyDanger()+"'"+" and";
		if(!companyControl.getCompanyCondition().equals("all"))
			hql+=" company.companyCondition="+"'"+companyControl.getCompanyCondition()+"'"+" and";
		if(hql.endsWith("and"))
			hql=hql.substring(0, hql.length()-3);
		if(hql.endsWith("where")){
			hql="from Company";
		}
		return (List<Company>)this.getHibernateTemplate().find(hql);
	}
	
	@SuppressWarnings("unchecked")
	public List<Company> PageByRequest(CompanyControl companyControl,int offset, int pageSize)
	{
		Session session = getSession();
		List<Company> list = null;
		Transaction transaction = null;
		String hql="from Company company where";
		if(companyControl.getDepartmentId()!=-1)
			hql+=" company.subdivision.department.departmentId="+companyControl.getDepartmentId()+" and";
		if(companyControl.getOfficeId()!=-1)
			hql+=" company.street.office.officeId="+companyControl.getOfficeId()+" and";
		if(companyControl.getStreetId()!=-1)
			hql+=" company.street.streetId="+companyControl.getStreetId()+" and";
		if(!companyControl.getCompanyDanger().equals("all"))
			hql+=" company.companyDanger="+"'"+companyControl.getCompanyDanger()+"'"+" and";
		if(!companyControl.getCompanyCondition().equals("all"))
			hql+=" company.companyCondition="+"'"+companyControl.getCompanyCondition()+"'"+" and";
		if(hql.endsWith("and"))
			hql=hql.substring(0, hql.length()-3);
		if(hql.endsWith("where")){
			hql="from Company";
		}
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql)
					.setFirstResult(offset).setMaxResults(pageSize);
			list =(List<Company>)query.list();

			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}

			e.printStackTrace();
		} finally {
			session.close();
		}

		return list;
	}

	
	@SuppressWarnings("unchecked")
	public List<Company> findCompanysByStreetAndOffice(int officeId){
		
		String hql="from Company company where company.street.office.officeId="+officeId+" order by company.companyId";
		List<Company> listCompany=(List<Company>)this.getHibernateTemplate().find(hql);
		return listCompany;
	}
	@SuppressWarnings("unchecked")
	public List<Company> findCompanysByStreet(int streetId){
		String hql="from Company company where company.street.streetId="+streetId+" order by company.companyId";
		List<Company> listCompany=(List<Company>)this.getHibernateTemplate().find(hql);
		return listCompany;
	}
	
	@Override
	public List<Company> findAllCompany() {
		// TODO Auto-generated method stub
		Session session = getSession();
		List<Company> list = null;
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			Query query = session.createQuery("from Company as company");
			list = query.list();

			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}

			e.printStackTrace();
		} finally {
			session.close();
		}

		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<Company> queryByPage(int offset, int pageSize,String hql) {
		Session session = getSession();
		List<Company> list = null;
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery(hql)
					.setFirstResult(offset).setMaxResults(pageSize);
			list =(List<Company>)query.list();

			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}

			e.printStackTrace();
		} finally {
			session.close();
		}

		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<Company> findByHql(String hql){
		return (List<Company>)this.getHibernateTemplate().find(hql);
	}
	
	@SuppressWarnings("unchecked")
	public Company findCompanyByUserId(int id){
		String hql="from Company company where company.user.userId="+id;
		List<Company> list=(List<Company>)this.getHibernateTemplate().find(hql);
		return list.get(0);
	}

}
