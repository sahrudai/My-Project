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

	session = (HttpSession)session.getAttribute("curSession");
	if(session != null)
	{
%>
	<ul>
		<li><a href="withdraw.jsp">View Users</a></li>
		<li><a href="displayBal.jsp">My account</a></li>
	</ul>
<%
	}
	else
	{
		response.sendRedirect("employeeLogin.jsp");
	}
%>
</body>
</html>