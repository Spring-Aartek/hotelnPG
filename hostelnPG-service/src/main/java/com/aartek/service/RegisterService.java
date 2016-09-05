package com.aartek.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aartek.model.UserRegistration;
import com.aartek.repository.*;;

@Service
public class RegisterService {
	@Autowired
	private RegisterRepository regRepository;

	public boolean registerService(UserRegistration urd) {
		// TODO Auto-generated method stub
		UserRegistration checkRegister = regRepository.registerRepository(urd);
		
		if (checkRegister.equals("") || checkRegister.equals(null)) {
			return false;
		} else
			return true;
	}

	public List<UserRegistration> getUserRecord(UserRegistration userregistration) {
		// TODO Auto-generated method stub
		List<UserRegistration> userList = null;

		userList = regRepository.getUserDetails(userregistration);

		if (userList.size() > 0) {

			return userList;

		} else {

			return null;
		}

	}

	public List<UserRegistration> getUserRecordbyId(Integer id, UserRegistration userregistration) {
		List<UserRegistration> userList = null;
		userList = regRepository.getUserDetailbyId(id, userregistration);

		if (userList.size() > 0) {

			return userList;

		} else {

			return null;
		}

	}

	public boolean UpdateUserByID(UserRegistration userregistration, Integer id) {
		// TODO Auto-generated method stub
		UserRegistration updateRecord = regRepository.UpdateRepository(userregistration, id);
		if (updateRecord.equals("") || updateRecord.equals(null)) {

			return false;
		} else

			return true;
	}

	public boolean DeleteRecordbyId(Integer id, UserRegistration userregistration) {
		// TODO Auto-generated method stub
		UserRegistration deletedRecord = regRepository.deleteUserDao(userregistration, id);
		if (deletedRecord.equals("") || deletedRecord.equals(null)) {
			return false;
		} else
			return true;

	}

}
