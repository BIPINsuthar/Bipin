package com.bipin.Web_Frontend.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bipin.Web_Frontend.dto.Registration;

public class RegDao
{

	public void setregValue(Registration r)
	{					
		try
		{
		Configuration con=new Configuration().configure().addAnnotatedClass(Registration.class);	
		SessionFactory sf=con.buildSessionFactory();
		Session session=sf.openSession();
		Transaction t=session.beginTransaction();
		session.save(r);
		t.commit();
		}
		catch(Exception e)
		{
			System.out.println("Error"+e);
			
		}
	}

}
