package com.project.Dao.Impl;

import java.util.Date;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.project.Dao.CheckListDAO;
import com.project.bean.CheckList;

public class CheckListDAOIpml extends HibernateDaoSupport implements CheckListDAO {

	@Override
	public void saveCheckList(CheckList checkList) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(checkList);
	}

	@Override
	public void findCheckListByDate(Date date) {
		// TODO Auto-generated method stub

	}

	@Override
	public void findCheckListByCompanyId(int company_id) {
		// TODO Auto-generated method stub

	}

	@Override
	@SuppressWarnings("unchecked")
	public CheckList findCheckListByHql(String hql) {
		// TODO Auto-generated method stub
		List<CheckList> list=this.getHibernateTemplate().find(hql);
	if(list.size()>0)
		return list.get(0);
	else
		return null;
	}

	@Override
	public List<CheckListDAO> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
