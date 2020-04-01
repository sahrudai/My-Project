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
<title>Insert title here</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
	session = (HttpSession)session.getAttribute("curSession");
	if(session != null)
	{
		String accNum=request.getParameter("accNum");
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbUrl="jdbc:mysql://localhost:3306/bank_application?user=root&password=root";
			con=DriverManager.getConnection(dbUrl);
			
			String query1="select deposits from transaction_details where account_number=?";
			pstmt = con.prepareStatement(query1);
			pstmt.setString(1, accNum);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				%>
				<ul>
					<h1>Your Deposits</h1>
					<li><%=rs.getString(1) %></li>
				</ul>
				<a href="customerchoice.jsp">go back</a>
				<a href=logout.jsp>logout</a>
				<%
			}
			else
			{
				%>
				<h1>invalid account number</h1>
				<div>
					<a href="customerchoice.jsp">go back</a>
					
				</div>
				<%
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>