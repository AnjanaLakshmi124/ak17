package com.cognizant.empManagementSystem.DAO;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cognizant.empManagementSystem.entity.Employee;
@Repository
public class EmployeeDaoImplimentation implements EmployeeDao {
	@Autowired
	SessionFactory factory;

	@Override
	public List<Employee> listOfEmployees() {
		Session session =factory.getCurrentSession();
		Query<Employee> query =session.createQuery("from Employee",Employee.class);
		List<Employee> empList=query.getResultList();
		return empList;
	}

	@Override
	public void saveEmployee(Employee theEmployee) {
		Session session =factory.getCurrentSession();
		session.saveOrUpdate(theEmployee);;
	}

	@Override
	public Employee getEmployee(int id) {
		Session session =factory.getCurrentSession();
		Employee emp=session.get(Employee.class, id);
		return emp;
	}

	@Override
	public void deleteEmployee(int id) {
		Session session =factory.getCurrentSession();
		Employee emp=session.get(Employee.class, id);
		session.delete(emp);
		
	}

	

}
