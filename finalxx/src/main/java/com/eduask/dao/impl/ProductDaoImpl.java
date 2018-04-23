package com.eduask.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eduask.dao.ProductDao;
import com.eduask.model.HotProduct;
import com.eduask.model.StarProduct;
import com.eduask.model.User;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}
	
	@Override
	public List<StarProduct> selectStar() {
		List<StarProduct> a=new ArrayList<StarProduct>();
		//Session session=getSession();
		//打开事务
		//session.beginTransaction();
		SQLQuery sql = getSession().createSQLQuery("select * from starproduct");			
		for(Object ob:sql.list()){
			StarProduct sta=new StarProduct();
			Object[] ob1 = (Object[]) ob;
			sta.setPic(String.valueOf(ob1[1]));
			sta.setName(String.valueOf(ob1[2]));
			sta.setPrice(String.valueOf(ob1[3]));
			sta.setContent(String.valueOf(ob1[4]));
			a.add(sta);
		}
		//System.out.println(sql.list());
		
		return a;
	}

	@Override
	public List<HotProduct> selectHot() {
		List<HotProduct> a=new ArrayList<HotProduct>();
		SQLQuery sql = getSession().createSQLQuery("select * from hotproduct");
		for(Object ob:sql.list()){
			Object[] ob1 = (Object[]) ob;
			HotProduct hp=new HotProduct();
			hp.setPic(String.valueOf(ob1[1]));
			hp.setPrice(String.valueOf(ob1[2]));
			hp.setFormer(String.valueOf(ob1[3]));
			hp.setName(String.valueOf(ob1[5]));
			hp.setContent(String.valueOf(ob1[6]));
			a.add(hp);
		}
		return a;
	}

}
