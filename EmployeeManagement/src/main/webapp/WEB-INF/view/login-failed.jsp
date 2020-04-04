<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invalid Login</title>
<style>
	#p{
		margin-top:10%;
		margin-left:30%;
		margin-right:30%;
		margin-bottom:10%;		
	}
	#b{
		margin-top:5%;
		margin-left:50%;
	}
</style>
</head>
<body bgcolor="#b30000">
<div id="p"><img src="/EmployeeManagement/resources/images/pic3.jpg"
 style="width:100%;height:35%"><br><br>
 <p style="color:#ffffff"><marquee direction="left">Entered credentials are invalid...Press EXIT to login again...</marquee></p>
<div id="b"><input type="button" value="EXIT" 
onclick="window.location.href='/EmployeeManagement';return false;" class="add-button"/>
</div>
</div>
</body>
</html>