<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.*"%>
<%@ page import="dbconnection.Dbconn"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.Blob" %>
<%@ page import="java.util.Random" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Credit Card Validation Form Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="amount/css/bootstrap.css"	type="text/css" media="all">
<link rel="stylesheet" href="amount/css/style.css" 	type="text/css" media="all">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" type="text/css" media="all">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700"			   type="text/css" media="all">
<title>Payment Amount</title>
<style type="text/css">
.center {
    font-weight: 600;
    display: inline-block;
    font-size: 16px;
 	color: #007BFF;
  	background: transparent;
    text-align: center;
    padding: 12px 18px;
    margin-top: 4em;
    box-shadow: none;
    text-decoration: none;
    border-radius: 5px;
    cursor: pointer;
}
.transparent-bg {
    background: transparent;
}

button.center {
    border: none;
}
body {
    margin: 0;  
    }
	#steps {
		margin: 80px 0 0 0;
	}
	.commands {
		overflow: hidden;
		margin-top: 30px;
	}
	.prev {
		float:left
	}

	.error {
		color: #FFC107;
	}
	.next, .submit {
		float:right
	}
	#progress {
		position: relative;
		height: 5px;
		background-color: #eee;
		margin-bottom: 50px;
	}
	#progress-complete {
		border: 0;
		position: absolute;
		height: 5px;
		min-width: 10px;
		background-color: #F44336;
		transition: width .2s ease-in-out;
	}

	@media screen and (max-width: 966px) {
		#progress {
			margin-bottom: 30px;
		}
	}

	@media screen and (max-width: 320px) {
		#progress {
			margin-bottom: 20px;
		}
	}
	.btn-cancel {
    margin-right: 20px; /* Adjust spacing between buttons */
}
	
</style>
</head>
<body>
<%
try
{
	HttpSession s=request.getSession();
	Connection conn=Dbconn.getconnection();
	String mail=(String) session.getAttribute("ownerMail");
	String qry = "select * FROM employee_status WHERE id = '"+mail+"'";
	PreparedStatement ps = conn.prepareStatement(qry);
	ResultSet rs= ps.executeQuery();
	String amount=(String)s.getAttribute("amount");
}catch(Exception e)
{
	e.printStackTrace();
}

%>
<h1>PAYMENT DETAILS</h1>

		<div class="containerw3layouts-agileits">
		<form action="PayAmount" method="post" id="Payment">

				<fieldset>
					<legend>Account Details :</legend>
					<div class="form-group agileinfo">
						<label for="Name">Name</label>
						<input id="Name" name="name" type="text" autocomplete="off" pattern="[A-Za-z .]+" class="form-control" placeholder="Name" required>
					</div>
				
					<div class="form-group">
						<label for="CardNumber"  >Account NUmber</label>
						
							<input id="CardNumber" type="text" autocomplete="off" class="form-control" name="cardnumber" pattern="[0-9]{16}" title="Enter 16 digit number" placeholder="Account Number" required>
					
					</div>
		<div>			
<div class="form-group ">
    <label for="CardNumber">Total Amount</label>
    <input id="TotalAmount" name="total" type="text" style="  background: transparent;" class="form-control custom-input transparent-bg" value="${amount}" readonly>
</div>
<div class="center" >
    <a href="AcceptedUserDisplay.jsp" class="btn btn-primary custom-btn" role="button" style="border: none; margin-right: 400px;">Cancel</a>
    <input type="submit" value="Pay Amount" class="btn btn-primary custom-btn" style="border: none; margin-left: 5px;">
</div>

</div>	
<!-- <div class="center">
    <input type="submit" value="Pay Amount" class="btn btn-primary custom-btn" style="border-color: transparent;">
    <a href="AcceptedUserDisplay.jsp" class="btn btn-primary custom-btn" role="button" style="border-color: transparent;">Cancel</a>
</div>-->

</body>
</html>