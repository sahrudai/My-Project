<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="employeeLogin.css">
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
%>
	<div class="wrapper">
	<form action="employeeLoginAction.jsp" class="form-signin">
	<h2 class="form-signin-heading">Please login</h2>
	   <input type="text" class="form-control" name="empid" placeholder="Employee ID" required="" autofocus="" />
      <input type="password" class="form-control" name="passcode" placeholder="Passcode" required=""/>      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
	</form>
	</div>
</body>
</html>