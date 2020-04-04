<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updation Form</title>
<style>
#d{
	width:25%;	
	border:8px solid #008040;
	margin-top:80px;
	padding:5%;
	margin-left:25%;
}
</style>
</head>
<body bgcolor="#99ffcc">
<div id="d">
<form:form action="saveEmployee" modelAttribute="employee" method="POST">
<font size="5px">Update information...</font>
	<br><br>
<form:hidden path="empId" />
<table>
	<tr>
		<td>First Name</td>
		<td>:</td>
		<td><form:input path="firstName"/></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td>:</td>
		<td><form:input path="lastName"/></td>
	</tr>
	<tr>
		<td>Age</td>
		<td>:</td>
		<td><form:input path="age"/></td>
	</tr>
	<tr>
		<td>Email</td>
		<td>:</td>
		<td><form:input type="email" path="email"/></td>
	</tr>
	<tr>
		<td>Contact Number</td>
		<td>:</td>
		<td><form:input path="contactNumber"/></td>
	</tr>
	<tr>
		<td>Project Id</td>
		<td>:</td>
		<td><form:input path="projectId" /></td>
	</tr>
	<tr>
		<td>Job Title</td>
		<td>:</td>
		<td><form:input path="jobTitle" /></td>
	</tr>
	<tr>
		<td>Salary</td>
		<td>:</td>
		<td><form:input path="salary" /></td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>:</td>
		<td><form:radiobutton path="gender" value="male" />Male
			<form:radiobutton path="gender"  value="female" />Female
			<form:radiobutton path="gender"  value="other" />Other
		</td>
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
		</td>
	</tr>
	<tr>
		<td>Date of joining</td>
		<td>:</td>
		<td><form:input path="dateOfJoining" type="date" /></td>
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
		</td>
	</tr>
	
	<tr>	
	<tr>
	<td><label></label></td>
	<td><input type="submit" value="Update" class="save">
	<td>
	<input type="button" value="Back To List" onclick="window.location.href='/EmployeeManagement/employee/list';return false;" class="add-button"/>
	</td></tr>
</table>
	
</form:form>
</div>
</body>
</html>