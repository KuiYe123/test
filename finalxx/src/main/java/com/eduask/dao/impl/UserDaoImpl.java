package com.eduask.dao.impl;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eduask.dao.UserDao;
import com.eduask.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}
	
	@Override
	public int insertuser(User user) {
		Session session  = getSession();
		session.beginTransaction();
		int i;
		try{
			user.setNickname(user.getUsername()); 
			session.save(user);
			i=1;
		}catch(Exception e){
			session.getTransaction().rollback();
			i=0;
		}
		session.getTransaction().commit();
		return i;
	}

	@Override
	public boolean selectuser(String username) {
		SQLQuery sql=getSession().createSQLQuery("select * from user where username=?");
		sql.setString(0, username);
		if(sql.list().size()>0){
			return false;
		}else{
			return true;
		}
		
	}

	@Override
	public boolean selectuser(User user) {
		SQLQuery sql=getSession().createSQLQuery("select * from user where username=? and password=?");
		sql.setString(0, user.getUsername());
		sql.setString(1, user.getPassword());
		if(sql.list().size()>0){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public User selectuserone(User user) {
		SQLQuery sql=getSession().createSQLQuery("select * from user where username=?");
		sql.setString(0, user.getUsername());
		User u=new User();
		for(Object ob:sql.list()){
			Object[] ob1 = (Object[]) ob;
			u.setId(Integer.valueOf(String.valueOf(ob1[0])));
			u.setUsername((String)ob1[1]);
			u.setPassword(String.valueOf(ob1[2]));
			u.setPhone(String.valueOf(ob1[3]));
			u.setNickname(String.valueOf(ob1[4]));
		}
		return u;
	}

}
