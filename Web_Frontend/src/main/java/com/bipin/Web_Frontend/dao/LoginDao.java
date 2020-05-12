package com.bipin.Web_Frontend.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.bipin.Web_Frontend.controller.Login;
import com.bipin.Web_Frontend.dto.User;

public class LoginDao {
	@SuppressWarnings("rawtypes")
	public User getuser(String email, String pass) {
		User u = null;
		Transaction t = null;
		try {
			
			Configuration c = new Configuration().configure().addAnnotatedClass(User.class);
			SessionFactory sf = c.buildSessionFactory();
			Session session = sf.openSession();
			t=session.beginTransaction();
			Query q = session.createQuery("from User_Detail where email=:n and pass=:p ");
			q.setParameter("n", email);
			q.setParameter("p", pass);
			u = (User) q.uniqueResult();
			t.commit();
			session.close();
		} catch (Exception e) {
			System.out.println("Exception::" + e);
		}

		return u;

	}

}
