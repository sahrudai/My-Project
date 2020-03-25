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
	<form action="depositMoneyAction.jsp" method="post">
	  <label for="card">Card Number:</label>
	  <input type="text" id="card" name="card" Required><br><br>
	  <label for="name">Full name:</label>
	  <input type="text" id="name" name="name" Required><br><br>
	  <label for="amount">Amount to be Deposited:</label>
	  <input type="text" id="amount" name="amount" Required><br><br>
	  <input type="submit" value="Submit">
	</form>
	<a href="customerchoice.jsp">go back</a>
</body>
</html>