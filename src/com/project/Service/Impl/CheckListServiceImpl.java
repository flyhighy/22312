package com.project.Service.Impl;

import java.util.Date;
import java.util.List;

import com.project.Dao.CheckListDAO;
import com.project.Service.CheckListService;
import com.project.bean.CheckList;

public class CheckListServiceImpl implements CheckListService {

	private CheckListDAO checkListdao;
	
	public CheckListDAO getCheckListdao() {
		return checkListdao;
	}

	public void setCheckListdao(CheckListDAO checkListdao) {
		this.checkListdao = checkListdao;
	}

	@Override
	public void saveCheckList(CheckList checkList) {
		// TODO Auto-generated method stub
		this.checkListdao.saveCheckList(checkList);
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
	public CheckList findCheckListByHql(String hql) {
		// TODO Auto-generated method stub
		return this.checkListdao.findCheckListByHql(hql);
	}

	@Override
	public List<CheckListService> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
