package com.aartek.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.model.UserDTO;
import com.aartek.model.UserRegistration;
import com.aartek.repository.LoginRepository;

@Service
public class LoginService {
	
	@Autowired
	private LoginRepository loginrepository;

	public List<UserRegistration> validateService(UserRegistration userregistration)
	{
		List<UserRegistration> login = null;
		System.out.println("--- Login Service ----");
		System.out.println(userregistration.getEmailId());
		System.out.println(userregistration.getPassword());
		System.out.println("--- ------- ----");
		
		login=loginrepository.loginRepository(userregistration.getEmailId(),userregistration.getPassword());
		if(login.size()==0)
		{
			return null; 
		}
		else
		{
			return login;
		
		}
	}

	
	
	
}
