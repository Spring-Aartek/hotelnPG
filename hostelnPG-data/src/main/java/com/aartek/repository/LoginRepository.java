package com.aartek.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.model.UserDTO;
import com.aartek.model.UserRegistration;

@Repository
public class LoginRepository 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public List<UserRegistration> loginRepository(String emailId,String password)
	{
		System.out.println("--- Login Repository ----");
		System.out.println(emailId);
		System.out.println(password);
		System.out.println("--- ------- ----");
		List<UserRegistration> login = null;
		if(emailId.equals(null))
		{
			return null;
	}
	else
	{
		login = hibernateTemplate
				.find("from UserRegistration al where al.emailId = ? and al.password = ?", emailId, password);
		
		return login;
		
	}
		
	}

	
		
		
	}

