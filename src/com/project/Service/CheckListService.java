package com.project.Service;

import java.util.Date;
import java.util.List;

import com.project.bean.CheckList;


public interface CheckListService {
	public void saveCheckList(CheckList checkList);
	public void findCheckListByDate(Date date);
	//查看某个公司的历史检查表
	public void findCheckListByCompanyId(int company_id);
	//查看某个公司某一天的历史检查表
	public CheckList findCheckListByHql(String hql);
	public List<CheckListService> findAll();
}
