<!DOCTYPE html>
<html lang="en">
<head>
  <title>iMobile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="banklogo.jpg">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="aboutus.jsp">About</a></li>
        <li><a href="contactUs.html">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="customerLogin.jsp">Customer</a></p>
      <p><a href="employeeLogin.jsp">Employee</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Welcome</h1>
      <p>
      	 Welcome to iMobile Bank, we provide the right financial services that will meet your financial challenges.
       	 We are inspired by integrity, experience, skills and motivated workforce to confront our challenges to deliver valuable financial services to our esteem customers.
         Bank with us and experience the difference. Our strong reputation is our most fundamental asset. We provide the right solutions to our customers.
		
		 We give the right consumer services which meet our customers demands. We act with integrity because it’s the right thing to do for our customers, our shareholders,
		 the industry and the larger community. Meet competent employees who will provide all your banking needs.
		
		 Banking with iMobile Bank Limited will lead you to overcome all your financial constraints as we elevate our clients on financial ladder.
		 Our customers’ sustainability in their businesses is our credo. Likewise, excellence in customer care and welfare of our customers are what we pursue.
			
		We innovate to render services that meet our customers’ satisfaction and loyalty.
	    This niche carved in customizing our products has earned us a nick name, “the pace setters (rural bank mu kofa bae)”
	   </p>
      <hr>
  </div>
</div>


</body>
</html>
