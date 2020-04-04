package com.cognizant.empManagementSystem.DAO;

import java.util.List;

import com.cognizant.empManagementSystem.entity.Employee;

public interface EmployeeDao {

	public List<Employee> listOfEmployees();
	
	public void saveEmployee(Employee theEmployee);
	
	public Employee getEmployee(int id);
	
	public void deleteEmployee(int id);
	
}
