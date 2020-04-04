<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
<link type="text/css" rel="stylesheet"
	href="/EmployeeManagement/resources/css/style1.css">
</head>
<body>
<div id="div0">
<h2>HASH TECHNOLOGIES</h2>
<h1>Welcome to Employee Database Management System</h1>
<div id="div1">
<form:form action="success" modelAttribute="admin">
<table>
	<tr>
	<td>UserName</td>
	<td>:</td>
	<td><form:input path="username"/></td>
	</tr>
	<tr>
	<td>Password</td>
	<td>:</td>
	<td><form:input path="password" type="password"/></td>
	</tr>
	 <tr>
	 <td></td><td></td>
	 <td>
	<input type="submit" value="Login" class="button">
	</td>
	</tr>
</table>
</form:form>
</div>
</div>
</body>
</html>