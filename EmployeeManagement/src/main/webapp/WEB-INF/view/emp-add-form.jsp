<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee adding Form</title>
<style>
#d{
	width:30%;	
	border:8px solid #660033;
	margin-top:50px;
	padding:5%;
	margin-left:25%;
}
</style>
</head>
<body bgcolor="pink">
<div id="d">
<form:form action="saveEmployee" modelAttribute="employee" method="POST">

	<font size="5px">Register new Employee information...</font>
	<br><br>
<table>
	<tr>
		<td>Employee Id</td>
		<td>:</td>
		<td><form:input path="empId"/>
		<form:errors path="empId" cssClass="error"/></td>
	</tr>
	<tr>
		<td>First Name</td>
		<td>:</td>
		<td><form:input path="firstName"/>
		<form:errors path="firstName" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td>:</td>
		<td><form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Age</td>
		<td>:</td>
		<td><form:input path="age"/>
		<form:errors path="age" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Email</td>
		<td>:</td>
		<td><form:input type="email" path="email"/>
		<form:errors path="email" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Contact Number</td>
		<td>:</td>
		<td><form:input path="contactNumber"/>
		<form:errors path="contactNumber" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Project Id</td>
		<td>:</td>
		<td><form:input path="projectId" />
		<form:errors path="projectId" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Job Title</td>
		<td>:</td>
		<td><form:input path="jobTitle" />
		<form:errors path="jobTitle" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Salary</td>
		<td>:</td>
		<td><form:input path="salary" />
		<form:errors path="salary" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>:</td>
		<td><form:radiobutton path="gender" value="male" />Male
			<form:radiobutton path="gender"  value="female" />Female
			<form:radiobutton path="gender"  value="other" />Other
		<form:errors path="gender" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Job Location</td>
		<td>:</td>
		<td><form:select name="dropdown" path="jobLocation">
			<form:option value="Select location">Select location</form:option>
			<form:option value="CHN-Chennai">CHN-Chennai</form:option>
			<form:option value="BLR-Bengaluru">BLR-Bengaluru</form:option>
			<form:option value="CBE-Coimbatore">CBE-Coimbatore</form:option>
			<form:option value="HYD-Hyderabad">HYD-Hyderabad</form:option>
			<form:option value="KHN-Kochi">KHN-Kochi</form:option>
			<form:option value="KKT-Kolkata">KKT-Kolkata</form:option>
			<form:option value="PNE-Pune">PNE-Pune</form:option>
			</form:select>
		<form:errors path="jobLocation" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Date of joining</td>
		<td>:</td>
		<td><form:input path="dateOfJoining" type="date" />
		<form:errors path="dateOfJoining" cssClass="error"/></td>
	</tr>
	<tr>
		<td>Business Unit</td>
		<td>:</td>
		<td><form:select name="dropdown" path="businessUnit">
			<form:option value="Select BU">Select BU</form:option>
			<form:option value="Insurance">Insurance</form:option>
			<form:option value="Banking&Financial Services">Banking&Financial Services</form:option>
			<form:option value="Healthcare">HealthCare</form:option>
			<form:option value="Manufacturing&Retail">Manufacturing&Retail</form:option>
			<form:option value="AVM">AVM</form:option>
			<form:option value="LS">LS</form:option>
			<form:option value="MLEU">MLEU</form:option>
			<form:option value="RHCG">RHCG</form:option>
			</form:select>
		<form:errors path="businessUnit" cssClass="error"/></td>
	</tr>
	
	<tr>
	<td></td>
	</tr>	
	<tr>
	<td></td>
	</tr>
	<tr>
	<td><label></label></td>
	<td><input type="submit" value="save" class="save">
	<td>
	<input type="button" value="Back To List" onclick="window.location.href='/EmployeeManagement/employee/list';return false;" class="add-button"/>
	</td></tr>
</table>
	
</form:form>
</div>
</body>
</html>