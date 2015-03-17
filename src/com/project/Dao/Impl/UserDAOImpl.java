package com.project.Dao.Impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.project.Dao.UserDAO;
import com.project.bean.User;


public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	@Override
	public void saveUser(User user) {
		this.getHibernateTemplate().save(user);

	}

	@Override
	public User findUserById(int id) {
		// TODO Auto-generated method stub
		User user=(User)this.getHibernateTemplate().get(User.class, id);
		
		return user;
	}

	@Override
	public void removeUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(user);

	}

	@Override
	@SuppressWarnings("unchecked")
	public List<User> findAllUser() {
		String hql="from User user order by user.id";
		return (List<User>)this.getHibernateTemplate().find(hql);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		
		this.getHibernateTemplate().update(user);

	}

	@Override
	
	public User findUserByName(String username) {
		// TODO Auto-generated method stub
		String hql="from User user where user.userUsername=?";
		List list=this.getHibernateTemplate().find(hql,username);
	 if(list.size()==0)
		return null;
	 else
		 return (User)list.get(0);
	 
	}
	@SuppressWarnings("unchecked")
	public List<User> findUsersByUserType(int userType){	
		//System.out.print("---------------dao"+userType+"--------------");
		String hql="from User user where user.userType=?";
		return (List<User>)this.getHibernateTemplate().find(hql,userType);
	}


}
