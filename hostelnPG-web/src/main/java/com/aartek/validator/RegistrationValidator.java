package com.aartek.validator;


import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.aartek.model.UserRegistration;




@Component
public class RegistrationValidator implements Validator

{

	public boolean supports(Class<?> clazz) {
		
		return UserRegistration.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		 UserRegistration userregistration =(UserRegistration)target;
		ValidationUtils.rejectIfEmpty(errors, "firstName", "error.firstName.empty");
		ValidationUtils.rejectIfEmpty(errors, "lastName", "error.lastName.empty");
		ValidationUtils.rejectIfEmpty(errors, "emailId", "error.emailId.empty");
		ValidationUtils.rejectIfEmpty(errors, "mobile", "error.mobile.empty");
		ValidationUtils.rejectIfEmpty(errors, "password","error.password.empty");

		if (userregistration.getMobile() != null && userregistration.getMobile().length() != 0 ) {
			 Pattern pattern = Pattern.compile("\\d{10}");
		      Matcher matcher = pattern.matcher(userregistration.getMobile());

		      if (!matcher.matches()) {
		    	  errors.rejectValue("mobile", "error.mobile.length");
		      }
		}
	
		if (userregistration.getEmailId() != null && userregistration.getEmailId().trim().length() > 0) {
			
			if (userregistration.getEmailId().contains("@") != true) {
				errors.rejectValue("emailId", "error.email.first.rule");
			} else if (userregistration.getEmailId().contains(".com") != true
					&& userregistration.getEmailId().contains(".net") != true) {
				errors.rejectValue("emailId", "error.email.second.rule");
			} 
		}
	
		}
		
		
		
	}
	
