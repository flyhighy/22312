package com.project.Service;

import java.util.Date;
import java.util.List;

import com.project.bean.CheckList;


public interface CheckListService {
	public void saveCheckList(CheckList checkList);
	public void findCheckListByDate(Date date);
	//�鿴ĳ����˾����ʷ����
	public void findCheckListByCompanyId(int company_id);
	//�鿴ĳ����˾ĳһ�����ʷ����
	public CheckList findCheckListByHql(String hql);
	public List<CheckListService> findAll();
}
