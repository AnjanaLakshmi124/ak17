package com.cognizant.empManagementSystem.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.empManagementSystem.DAO.EmployeeDao;
import com.cognizant.empManagementSystem.entity.Employee;
@Service
public class EmployeeServiceImplimentation implements EmployeeService {
	@Autowired
	EmployeeDao empDao;

	@Override
	@Transactional
	public List<Employee> listOfEmployees() {
		return empDao.listOfEmployees();
	}

	@Override
	@Transactional
	public void saveEmployee(Employee theEmployee) {		
		empDao.saveEmployee(theEmployee);
	}

	@Override
	@Transactional
	public Employee getEmployee(int id) {		
		return empDao.getEmployee(id);
	}

	@Override
	@Transactional
	public void deleteEmployee(int id) {
		empDao.deleteEmployee(id);
		
	}

	
}
