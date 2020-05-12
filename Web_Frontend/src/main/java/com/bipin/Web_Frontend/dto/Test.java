package com.bipin.Web_Frontend.dto;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class Test 
{
	
	
	 @SuppressWarnings({ "unchecked", "rawtypes" })
	public User getuser()
     {
        
		User o1=null;
		try {
			String n = "sutharnikul146@gmail.com";
			String p = "nikul@123";
			Configuration c = new Configuration().configure().addAnnotatedClass(User.class);
			SessionFactory sf = c.buildSessionFactory();
			Session session = sf.openSession();
			Transaction t=session.beginTransaction();
			Query q = session.createQuery(" from User_Detail where email=:n and pass=:p ");
			q.setParameter("n",n);
			q.setParameter("p",p);
		   // l=(List<Object>)q.list();
			 o1=(User)q.uniqueResult();
			System.out.println("value::"+o1);
			//System.out.println(l);
			t.commit();
			session.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return o1;
		
     }
	public static void main(String args[])
	{
		
		Test t=new Test();
		User o=t.getuser();
		System.out.println("value is::"+o);
       

	}

}
