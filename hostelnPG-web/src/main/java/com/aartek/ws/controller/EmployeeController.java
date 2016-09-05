package com.aartek.ws.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
@RequestMapping(method=RequestMethod.GET, value="/employee/{id}")
public ModelAndView getEmployee(@PathVariable String id) {
    int id1=Integer.parseInt(id);
    return new ModelAndView("employees", "object", id1);
}



}