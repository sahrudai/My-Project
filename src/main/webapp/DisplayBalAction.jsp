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
		String card=request.getParameter("card");
		int pin=Integer.parseInt( request.getParameter("pin"));
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbUrl="jdbc:mysql://localhost:3306/bank_application?user=root&password=root";
			con=DriverManager.getConnection(dbUrl);
			
			String query="select tot_bal from transaction_details where card_num=? and pin=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, card);
			pstmt.setInt(2, pin);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				%>
				<h2>Total balance</h2>
				<%=rs.getInt(1) %>
				<%
			}
			else
			{
			%>
				<h2>invalid card details </h2>
				<a href="displayBal.jsp">go back</a>
			<%	
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	%>
	<a href="customerchoice.jsp">go back</a>
</body>
</html>