
<html>
<body>
<%
	response.setHeader("Cache-Control", "no-store,must-revalidate");
%>
	<form action="login.jsp" method="post">
	  <label for="username">Username:</label>
	  <input type="text" id="username" name="username"><br><br>
	  <label for="password">Password:</label>
	  <input type="text" id="password" name="password"><br><br>
	  <input type="submit" value="Submit">
	</form>
</body>
</html>
