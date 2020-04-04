package com.cognizant.empManagementSystem.controllers;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.empManagementSystem.Service.EmployeeService;
import com.cognizant.empManagementSystem.entity.Employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	EmployeeService service;
	
	
	  @InitBinder public void doPreprocessing(WebDataBinder dataBinder) {
	  DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd"); CustomDateEditor
	  orderDateEditor=new CustomDateEditor(dateFormat,true);
	  dataBinder.registerCustomEditor(Date.class,orderDateEditor); }
	 
	
	@GetMapping("/list")
	public String getEmployeeList(Model model) {
		List<Employee> empList=service.listOfEmployees();
		model.addAttribute("employee",empList);
		return "emp-list";
	}
	@GetMapping("/addEmployee")
	public String addEmployee(Model model) {
		Employee e1=new Employee();
		model.addAttribute("employee",e1);
		return "emp-add-form";
	}
	@PostMapping("/saveEmployee")
	public String saveEmployee(@Valid @ModelAttribute("employee") Employee emp,BindingResult result) {
		if(result.hasErrors())
				return "emp-add-form";
		service.saveEmployee(emp);
		return "redirect:/employee/list";
	}
	@GetMapping("/updateEmployee")
	public String updateEmployee(@RequestParam("empId") int theId, Model themodel) {
		Employee emp= service.getEmployee(theId);
		themodel.addAttribute("employee", emp);
		return "update-form";
		
	}
	@GetMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("empId") int theId) {
		service.deleteEmployee(theId);
		return "redirect:/employee/list";
		
	}
}
