<html>
<head>
<title>Customerchoice</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");

	session = (HttpSession)session.getAttribute("curSession");
	if(session != null)
	{
%>
	<ul>
		<li><a href="withdraw.jsp">Withdraw money</a></li>
		<li><a href="displayBal.jsp">Display balance</a></li>
		<li><a href="depositMoney.jsp">Deposit money</a></li>
	</ul>
<%
	}
	else
	{
		response.sendRedirect("customerLogin.jsp");
	}
%>

</body>
</html>