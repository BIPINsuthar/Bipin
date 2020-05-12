package com.bipin.Web_Frontend.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bipin.Web_Frontend.dto.User;

public class RegDao {

	public int setregValue(User r) 
	{

		Transaction t = null;
		int id=0;
		try {
			Configuration con = new Configuration().configure().addAnnotatedClass(User.class);
			SessionFactory sf = con.buildSessionFactory();
			Session session = sf.openSession();
			t = session.beginTransaction();
			id=(Integer)session.save(r);
			t.commit();

		  } catch (Exception e) {
			System.out.println("Error" + e);

		   }
		return id;
		
	}

}
