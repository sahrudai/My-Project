<html>
<head>
<title>Customerchoice</title>
<style>
table {
  font-family: arial, sans-serif;
  width: 100%;
  color:brown;
}
body {
	  background-image: url("xx.jpg");
	}
</style>

</head>
<body>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");

	session = (HttpSession)session.getAttribute("curSession");
	if(session != null)
	{
%>
<table>
  <tr>
    <th><a href="withdraw.jsp">Withdraw money</a></th>
    <th><a href="displayBal.jsp">Display balance</a></th>
    <th><a href="myWithdrawals.jsp">My Withdrawals</a></th>
    <th><a href="myDeposits.jsp">My Deposits</a></th>
    <th><a href="depositMoney.jsp">Deposit money</a></th>
  </tr>
 </table>
	<br><br>
	
	<table>
		 <tr>
			<th><a href=logout.jsp>logout</a></th>
		</tr>
	</table>
	
<%
	}
	else
	{
		response.sendRedirect("customerLogin.jsp");
	}
%>

</body>
</html>