package com.bipin.Web_Frontend.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.bipin.Web_Frontend.dto.Registration;

public class RegDao
{

	public void setregValue(String fname, String lname, String pass, String phone, String email, String date,
			String gender, String address) 
	{
		Registration r=new Registration();
		r.setFname(fname);
		r.setLname(lname);
		r.setPass(pass);
		r.setPhone(phone);
		r.setEmail(email);
		r.setDate(date);
		r.setAddress(address);
		r.setGender(gender);

		
		Configuration con=new Configuration().configure().addAnnotatedClass(Registration.class);
		SessionFactory sf=con.buildSessionFactory();
		Session session=sf.openSession();
		Transaction t=session.beginTransaction();
		session.save(r);
		t.commit();
		
	}

}
