<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
	<%		
		response.setHeader("Cache-Control", "no-store,must-revalidate");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String dbUrl="jdbc:mysql://localhost:3306/bank_application?user=root&password=root";
		con=DriverManager.getConnection(dbUrl);
		
		String query="select * from user_details where username=? and password=?";
		
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		rs=pstmt.executeQuery();
		
			if(rs.next())
			{
				session = request.getSession();
				session.setAttribute("curSession", session);
				response.sendRedirect("customerchoice.jsp");
			}
			else
			{
	%>
			<h1>User not found..</h1>
			<a href="customerLogin.jsp">go back</a>
	<%
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	%>
</body>
</html>