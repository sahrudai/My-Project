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
	<h3>Select the bank you want to deposit </h3>
	<ul>
		<li><a href="thisbank.jsp">Our bank</a></li>
		<li><a href="anotherbank.jsp">Another Bank</a></li>
		<div>
			<a href=logout.jsp>logout</a>
		</div>
	</ul>
</body>
</html>