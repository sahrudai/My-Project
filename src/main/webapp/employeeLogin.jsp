<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
%>
	<form action="login.jsp" method="post">
	  <label for="empid">Employee Id:</label>
	  <input type="text" id="empid" name="empid" Required><br><br>
	  <label for="passcode">Passcode:</label>
	  <input type="text" id="passcode" name="passcode" Required><br><br>
	  <input type="submit" value="Submit">
	</form>
</body>
</html>