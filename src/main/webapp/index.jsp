
<html>
<head>
<style>
	h1 {
		color:blue;
		text-align: center;
		font-family: "Raleway", sans-serif
	}
	body {
	  background-image: url("180293.jpg");
	}
	a:link, a:visited{
		background-color: #f44336;
	  color: white;
	  padding: 14px 25px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size:150%;
	}
	a:hover, a:active {
	  background-color: red;
	}
	marquee
	{
		 font-style: oblique;
		 
	}

</style>
</head>
<body>
<marquee direction="right" style="background-color:hsl(9, 100%, 64%);">Welcome to iMobile!!!!</marquee>
	
	
	<a href="customerLogin.jsp">Customer</a>
	<a href="employeeLogin.jsp">Employee</a>
	
	<form action="feedback.jsp">
	  <label for="feedback">Feedback:</label><br>
	  <input type="text" id="feedback" name="feedback"><br><br>
 	  <input type="submit" value="Submit">
	</form>
	<a href="aboutus.jsp">About Us</h2>
	
</body>
</html>
