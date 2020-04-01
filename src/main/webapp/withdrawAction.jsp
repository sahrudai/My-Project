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
		int pin = Integer.parseInt( request.getParameter("pin"));
		int withdrawalAmount = Integer.parseInt( request.getParameter("amount"));
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbUrl="jdbc:mysql://localhost:3306/bank_application?user=root&password=root";
			con=DriverManager.getConnection(dbUrl);
		
			String query1="select tot_bal,withdrawals from transaction_details where card_num=? and pin=?";
			pstmt = con.prepareStatement(query1);
			pstmt.setString(1, card);
			pstmt.setInt(2, pin);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				int amount = rs.getInt(1);
				String withdrawals = rs.getString(2);
				if(withdrawalAmount<=amount)
				{
					amount = amount - withdrawalAmount;
					Date date = new Date();
					String today = date.toLocaleString();
					withdrawals = withdrawals+","+withdrawalAmount+"-"+today;
					String query2 = "UPDATE `bank_application`.`transaction_details` SET `tot_bal` = ?, `withdrawals` = ? WHERE (`card_num` = ?);";
					pstmt = con.prepareStatement(query2);
					pstmt.setInt(1, amount);
					pstmt.setString(2,withdrawals );
					pstmt.setString(3, card);
					pstmt.executeUpdate();
				%>
				<h2>Transaction Successful!!</h2>
				<a href="customerchoice.jsp">go back</a><br>
				<a href=logout.jsp>logout</a></th>
				<%
				}
			else
			{
			%>
				<h2>Insufficient Funds</h2>
				<a href="customerchoice.jsp">go back</a>
				
			<%				
			}
		}
			else
			{
			%>
				<h2>Invalid Card Details</h2>
				<a href="withdraw.jsp">go back</a>
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
		response.sendRedirect("customerLogin.jsp");
	}
%>
	
</body>
</html>