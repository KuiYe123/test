package com.eduask.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eduask.dao.PhoneDao;
import com.eduask.model.Page;
import com.eduask.model.Phone;

@Repository
public class PhoneDaoImpl implements PhoneDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}


	@Override
	public void select(Page page,String search) {
		
		List<Phone> p=new ArrayList<Phone>();
		Session s=getSession();
		SQLQuery sql=s.createSQLQuery("select * from phone where fullname like '"+search+"%' limit ?,?");
		sql.setInteger(0, (page.getNowPage() - 1) * page.getPageSize());
		sql.setInteger(1, page.getPageSize());
		for(Object ob:sql.list()){
			Phone phone=new Phone();
			Object[] ob1 = (Object[]) ob;
			phone.setId(Integer.valueOf(String.valueOf(ob1[0])));
			phone.setUrlone(String.valueOf(ob1[1]));
			phone.setUrltwo(String.valueOf(ob1[2]));
			phone.setUrlthree(String.valueOf(ob1[3]));
			phone.setLabel(String.valueOf(ob1[4]));
			phone.setFullname(String.valueOf(ob1[5]));
			phone.setNowprice(String.valueOf(ob1[6]));
			phone.setOldprice(String.valueOf(ob1[7]));
			p.add(phone);
		}
		page.setDataList(p);
		s.close();
	}


	@Override
	public void getcount(Page page, String search) {
		Session s=getSession();
		SQLQuery sql=s.createSQLQuery("select count(*) from phone where fullname like '"+search+"%'");
		page.setTotalCount(Integer.valueOf(String.valueOf(sql.list().get(0))));
		s.close();
		System.out.println(page);
	}

}
