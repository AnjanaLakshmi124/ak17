package com.cognizant.empManagementSystem.Service;

import java.util.List;

import com.cognizant.empManagementSystem.entity.Employee;

public interface EmployeeService {

	public List<Employee> listOfEmployees();
	
	public void saveEmployee(Employee theEmployee);
	
	public Employee getEmployee(int id);
	
	public void deleteEmployee(int id);
}
