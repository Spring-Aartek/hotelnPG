package com.aartek.ws.bean;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class EmployeeList {
    private int count;
    private List<Employee> employees;
 
    public EmployeeList() {}
     
    public EmployeeList(List <Employee> employees) {
        this.employees = employees;
        this.count = employees.size();
    }
 
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
     
   
    public List<Employee> getEmployees() {
        return employees;
    }
    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }
     
}