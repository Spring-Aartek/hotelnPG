package com.aartek.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aartek.model.UserDTO;
import com.aartek.model.UserRegistration;
import com.aartek.service.LoginService;
import com.aartek.service.RegisterService;

import com.aartek.service.UserRegistrationService;
import com.aartek.validator.RegistrationValidator;

@Controller
public class RegisterController {

	@Autowired
	private RegisterService registerService;

	@Autowired
	private RegistrationValidator registervalidator;
	
	
	
	@Resource(name="UserRegistrationService")
	 private UserRegistrationService userRegistrationService;

	@RequestMapping(value = "/registration")
	public String register(@ModelAttribute("UserRegistration") UserRegistration userregistration,
			Map<String, Object> map, Model model) throws Exception {
		model.addAttribute("userregistration", userregistration);

		List<UserRegistration> userList = registerService.getUserRecord(userregistration);
		
		if (userList != null) {
			
			
			System.out.println("get value "+userList.get(1).getId());
			
			model.addAttribute("userList", userList);

			return "register";
		} else {
			model.addAttribute("NoRecord", "No such record found");
			return "register";
		}

	}

	@RequestMapping(value = "/deleteProfile")
	public String deleteProfile(@ModelAttribute("UserRegistration") UserRegistration userregistration, Model model,
			@RequestParam(required = false) Integer id) throws Exception {
		model.addAttribute("userregistration", userregistration);
		List<UserRegistration> li = null;
		boolean deletedResult = registerService.DeleteRecordbyId(id, userregistration);
		if (deletedResult == true) {

			return "redirect:/registration.do";

		} else {
			return "redirect:/registration.do";
		}
	}

	@RequestMapping(value = "/updateprofile")
	public String updateProfile(@ModelAttribute("UserRegistration") UserRegistration userregistration,
			Model model, @RequestParam Integer id) throws Exception {
		
	
	
		List<UserRegistration> updatedlist = registerService.getUserRecordbyId(id, userregistration);
		List<UserRegistration> userList = registerService.getUserRecord(userregistration);
		if (updatedlist == null) {
			
			return "redirect:/registration.do";
		} else {

			model.addAttribute("updatedlist", updatedlist);
			model.addAttribute("userList", userList);
			return "register";
		}

	}
	
	@RequestMapping(value = "/saveProfile")
	public String saveProfile(@ModelAttribute("UserRegistration") UserRegistration userregistration,
			Model model, @RequestParam Integer id) throws Exception {
		
		Boolean flag = registerService.UpdateUserByID(userregistration, id);
		List<UserRegistration> updatedlist = registerService.getUserRecordbyId(id, userregistration);
		List<UserRegistration> userList = registerService.getUserRecord(userregistration);
		
		if (updatedlist == null) {
			
			return "redirect:/registration.do";
		} else {

			model.addAttribute("updatedlist", updatedlist);
			model.addAttribute("userList", userList);
			return "register";
		}

	}
	@RequestMapping(value = "/userRegistration", method = { RequestMethod.GET, RequestMethod.POST })
	public String userRegistration(@ModelAttribute("UserRegistration") UserRegistration userregistration,
			BindingResult result,@RequestParam(required = false) Integer id, Model model, HttpServletRequest request) throws Exception {
		boolean registervalidate = false;
		System.out.println("form generated ID "+userregistration.getId());
		registervalidator.validate(userregistration, result);

		if (result.hasErrors()) {

			return "register";
		} else {
			boolean userList = registerService.registerService(userregistration);
			
			if (userList == false) {
				
				return "redirect:/registration.do";
			} else {

				
				return "home";
			}
		}
	}
}
