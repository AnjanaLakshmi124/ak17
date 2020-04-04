package com.cognizant.empManagementSystem.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="employee_management")
public class Employee {
	@Id
	@Column(name="employee_id")
	private int empId;
	@Column(name="firstName")
	@NotEmpty(message="firstname cannot be null")
	private String firstName;
	@Column(name="lastName")
	@NotEmpty(message="lastname cannot be null")
	private String lastName;
	@Column(name="mail_id")
	@Email(message="email should be valid")
	private String email;
	@Column(name="contact_number")
	@NotEmpty(message="contactNumber cannot be null")
	private String contactNumber;
	@Column(name="gender")
	@NotEmpty(message="is required")
	private String gender;
	@Column(name="age")
	@Min(value=20,message="cannot be less than 20")
	@Max(value=60,message="cannot be greater than 60")
	private int age;
	@Column(name="job_location")
	@NotEmpty(message="jobLocation cannot be null")
	private String jobLocation;
	@Column(name="Bussiness_Unit")
	@NotEmpty(message="enter businessUnit")
	private String businessUnit;
	@Column(name="project_id")
	private int projectId;
	@Column(name="Job_title")
	@NotEmpty(message="enter job title")
	private String jobTitle;
	@Column(name="DateOfJoining")
	@NotNull(message="DOJ cannot be null")
	private Date dateOfJoining;
	@Column(name="Salary")
	@Min(value=500,message="not within the range")
	@Max(value=99999,message="not within the range")
	private double salary;
 
 public Employee() {}
 public Employee(String firstName,String lastName,String email,String contactNumber,String gender,int age,
		 String jobLocation,String businessUnit,int projectId,String jobTitle,Date dateOfJoining,double salary) {
	 this.firstName=firstName;
	 this.lastName=lastName;
	 this.email=email;
	 this.contactNumber=contactNumber;
	 this.gender=gender;
	 this.age=age;
	 this.jobLocation=jobLocation;
	 this.businessUnit=businessUnit;
	 this.projectId=projectId;
	 this.jobTitle=jobTitle;
	 this.dateOfJoining=dateOfJoining;
	 this.salary=salary;
 }
public int getEmpId() {
	return empId;
}
public void setEmpId(int empId) {
	this.empId = empId;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getContactNumber() {
	return contactNumber;
}
public void setContactNumber(String contactNumber) {
	this.contactNumber = contactNumber;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getJobLocation() {
	return jobLocation;
}
public void setJobLocation(String jobLocation) {
	this.jobLocation = jobLocation;
}
public String getBusinessUnit() {
	return businessUnit;
}
public void setBusinessUnit(String businessUnit) {
	this.businessUnit = businessUnit;
}
public int getProjectId() {
	return projectId;
}
public void setProjectId(int projectId) {
	this.projectId = projectId;
}
public String getJobTitle() {
	return jobTitle;
}
public void setJobTitle(String jobTitle) {
	this.jobTitle = jobTitle;
}
public Date getDateOfJoining() {
	return dateOfJoining;
}
public void setDateOfJoining(Date dateOfJoining) {
	this.dateOfJoining = dateOfJoining;
}
public double getSalary() {
	return salary;
}
public void setSalary(double salary) {
	this.salary = salary;
}
@Override
public String toString() {
	return "Employee [empId=" + empId + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
			+ ", contactNumber=" + contactNumber + ", gender=" + gender + ", age=" + age + ", jobLocation="
			+ jobLocation + ", businessUnit=" + businessUnit + ", projectId=" + projectId + ", jobTitle=" + jobTitle
			+ ", dateOfJoining=" + dateOfJoining + ", salary=" + salary + "]";
}
 
}
