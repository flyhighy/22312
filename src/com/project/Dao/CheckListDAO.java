package com.project.Dao;

import java.util.Date;
import java.util.List;

import com.project.bean.CheckList;


public interface CheckListDAO {
	public void saveCheckList(CheckList checkList);
	public void findCheckListByDate(Date date);
	//�鿴ĳ����˾����ʷ����
	public void findCheckListByCompanyId(int company_id);
	//�鿴ĳ����˾ĳһ�����ʷ����
	public CheckList findCheckListByHql(String hql);
	public List<CheckListDAO> findAll();
}
