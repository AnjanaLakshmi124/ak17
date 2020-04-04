package com.cognizant.empManagementSystem.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cognizant.empManagementSystem.entity.Admin;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String displayHomepage(@ModelAttribute("admin") Admin admin) {
		return "Home-page";		
	}
	@RequestMapping("/success")
	public String login(@ModelAttribute("admin") Admin admin) {
		System.out.println(admin.getUsername());
		System.out.println(admin.getPassword());
		if(admin.getUsername().equals("ADMIN")&&admin.getPassword().equals("admin1996")) {
			return "redirect:/employee/list";
		}
		else return "login-failed";		
	}
}
