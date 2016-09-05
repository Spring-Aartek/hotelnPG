package com.aartek.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aartek.model.UserRegistration;

@Repository
public class RegisterRepository {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public UserRegistration registerRepository(UserRegistration userregistration) {
		// TODO Auto-generated method stub
		if (userregistration != null) {
			hibernateTemplate.saveOrUpdate(userregistration);
			return userregistration;
		} else {
			return null;
		}

	}

	public List<UserRegistration> getUserDetails(UserRegistration userregistration) {
		// TODO Auto-generated method stub
		List<UserRegistration> login = null;
		if (userregistration != null) {
			login = hibernateTemplate.find("from UserRegistration");

			return login;
		} else {
			return null;
		}

	}

	public List<UserRegistration> getUserDetailbyId(Integer id, UserRegistration userregistration) {
		List<UserRegistration> login = null;
		if (userregistration != null) {

			login = hibernateTemplate.find("from UserRegistration where id=?", id);

			return login;
		} else {
			return null;
		}
	}

	public UserRegistration UpdateRepository(UserRegistration userregistration, Integer id) {
		if (userregistration != null) {

			UserRegistration userregistration1 = (UserRegistration) hibernateTemplate.get(UserRegistration.class, id);
			userregistration1.setId(id);
			userregistration1.setEmailId(userregistration.getEmailId());
			userregistration1.setFirstName(userregistration.getFirstName());
			userregistration1.setLastName(userregistration.getLastName());

			userregistration1.setMobile(userregistration.getMobile());
			userregistration1.setPassword(userregistration.getPassword());

			hibernateTemplate.update(userregistration1);

			return userregistration;
		} else {
			return null;
		}
	}

	public UserRegistration deleteUserDao(UserRegistration userregistration, Integer id) {

		if (userregistration != null) {
			UserRegistration userregistration1 = (UserRegistration) hibernateTemplate.get(UserRegistration.class, id);
			hibernateTemplate.delete(userregistration1);
			return userregistration;
		}
		return null;
	}
}