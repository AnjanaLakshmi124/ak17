<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<link type="text/css" rel="stylesheet"
	href="/EmployeeManagement/resources/css/style2.css">
</head>
<body>
<h1>Manage Employee Database</h1>
<input type="button" value="Add Employee"
onclick="window.location.href='addEmployee';
return false;" class="add-button"/>

<input type="button" value="EXIT"
onclick="window.location.href='/EmployeeManagement';
return false;" class="add-button"/>

<table>
<tr>
	<th>Id</th>
	<th>FirstName</th>
	<th>LastName</th>
	<th>Email</th>
	<th>Contact Number</th>
	<th>Gender</th>
	<th>Age</th>
	<th>Job Location</th>
	<th>Business Unit</th>
	<th>Project Id</th>
	<th>Job Title</th>
	<th>Date Of Joining</th>
	<th>Salary</th>
	<th>Action</th>
</tr>
<c:forEach var="tempEmployee" items="${employee }">
<c:url var="updateLink" value="/employee/updateEmployee">
	<c:param name="empId" value="${tempEmployee.empId}"></c:param>
</c:url>
<c:url var="deleteLink" value="/employee/deleteEmployee">
	<c:param name="empId" value="${tempEmployee.empId}"></c:param>
</c:url>
<tr>
	<td>${tempEmployee.empId }</td>
	<td>${tempEmployee.firstName}</td>
	<td>${tempEmployee.lastName}</td>
	<td>${tempEmployee.email}</td>
	<td>${tempEmployee.contactNumber}</td>
	<td>${tempEmployee.gender}</td>
	<td>${tempEmployee.age}</td>
	<td>${tempEmployee.jobLocation}</td>
	<td>${tempEmployee.businessUnit}</td>
	<td>${tempEmployee.projectId}</td>
	<td>${tempEmployee.jobTitle}</td>
	<td>${tempEmployee.dateOfJoining}</td>
	<td>${tempEmployee.salary}</td>
	<td><a href="${updateLink}">Update</a>|
		<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a>
	</td>
</tr>
</c:forEach>
</table>
<br>

</body>
</html>