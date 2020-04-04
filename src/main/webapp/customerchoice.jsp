<html>
<head>
<title>Customerchoice</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="custmoerChoice.css">
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 30%;
  height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 70%;
  border-left: none;
  height: 300px;
  display: none;
}

/* Clear floats after the tab */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
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
<div class="bg"></div>
<div class="tab">
  <a href="withdraw.jsp"><button class="tablinks" onmouseover="openCity(event, 'withdraw')">Withdraw money</button></a>
  <a href="displayBal.jsp"><button class="tablinks" onmouseover="openCity(event, 'balanceEnquiry')">Display balance</button></a>
  <a href="myWithdrawals.jsp"><button class="tablinks" onmouseover="openCity(event, 'withdrawals')">My Withdrawals</button></a>
  <a href="myDeposits.jsp"><button class="tablinks" onmouseover="openCity(event, 'deposits')">My Deposits</button></a>
  <a href="depositMoney.jsp"><button class="tablinks" onmouseover="openCity(event, 'deposit')">Deposit money</button></a>
</div>

<div id="withdraw" class="tabcontent">
  <p>Withdraw  money from bank account.</p>
</div>

<div id="balanceEnquiry" class="tabcontent">
  <p>Check your total balance.</p> 
</div>

<div id="withdrawals" class="tabcontent">
  <p>Check your total Withdrawals.</p>
</div>

<div id="deposits" class="tabcontent">
  <p>Check your total Deposits.</p>
</div>

<div id="deposit" class="tabcontent">
  <p>Deposit money .</p>
</div>

<div class="clearfix"></div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
<%
	}
	else
	{
		response.sendRedirect("customerLogin.jsp");
	}
%>

</body>
</html>