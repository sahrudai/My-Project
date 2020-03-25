<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
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

		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String card = request.getParameter("card");
		String name = request.getParameter("name");
		int amount = Integer.parseInt( request.getParameter("amount"));
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbUrl="jdbc:mysql://localhost:3306/bank_application?user=root&password=root";
			con=DriverManager.getConnection(dbUrl);
			
			String query1="select `deposits`,`tot_bal` from transaction_details where card_num=?";
			pstmt = con.prepareStatement(query1);
			pstmt.setString(1, card);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				String deposit = rs.getString(1);
				int totalBal = rs.getInt(2);
				String query2 = "UPDATE `transaction_details` SET `tot_bal` = ?, `deposits` = ? WHERE (`card_num` = ?)";
				totalBal = totalBal+amount;
				Date date = new Date();
				String today = date.toLocaleString();
				
				String deposits = deposit+","+amount+"-"+today;
				
				pstmt = con.prepareStatement(query2);
				pstmt.setInt(1, totalBal);
				pstmt.setString(2,deposits );
				pstmt.setString(3, card);
				pstmt.executeUpdate();
				
				%>
				<h2>Transaction Successful!!</h2>
				<%
			}
			else
			{
			%>
				<h2>Invalid Card Details</h2>
				<a href="thisbank.jsp">go back</a>
			<%
			}
			}
			catch(Exception e)
			{
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