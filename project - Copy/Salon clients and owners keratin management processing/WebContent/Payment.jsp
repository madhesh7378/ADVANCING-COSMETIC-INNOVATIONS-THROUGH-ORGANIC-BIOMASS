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
<title>Payment Field</title>
<style type="text/css">
.center {
    border: 2px solid #007BFF;
    font-weight: 600;
    display: inline-block;
    font-size: 16px;
 	color: #007BFF;
  	background: transparent;
    text-align: center;
    padding: 12px 18px;
    margin-top: 2em;
    box-shadow: none;
    text-decoration: none;
    border-radius: 5px;
    cursor: pointer;
    border: none;
}
.button-container {
    display: flex;
    justify-content: space-between; 
    margin-top: 20px; 
}

.button-container .btn {
    width: 45%; /* Adjust width as needed */
}

.transparent-bg {
    background: transparent;
}
button.center {
    border: none;
}
body {
    margin: 0;  
     font-family: Arial, sans-serif;
    }
	/*.wrap {
		max-width: 980px;
		margin: 10px auto 0;
	}*/
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
	
	.containerw3layouts-agileits {
    margin-top: 2em; 
            max-width: 600px; 
            margin-left: auto;
            margin-right: auto;
}
 .form-group label {
            margin-bottom: 0.5em; 
            display: block; 
        }

 .form-control {
            width: 100%;
            box-sizing: border-box; 
        }

        .form-group .col-sm-10 {
            padding-left: 0;
        }
	 @media screen and (max-width: 768px) {
            .containerw3layouts-agileits {
                width: 90%; 
            }
	}
		.btn-cancel {
    margin-right: 70px; /* Adjust spacing between buttons */
}

</style>


</head>
<body>
<%
try
{
	Connection conn=Dbconn.getconnection();
	String mail=(String) session.getAttribute("userEmail");
	double sum=0,quantity=0,price=0,total=0;
	String qry = "select * FROM temp_order WHERE email = '"+mail+"'";
	PreparedStatement ps = conn.prepareStatement(qry);
	ResultSet rs= ps.executeQuery();
	
	while(rs.next())
	{
		String qua=rs.getString(9);
		quantity=Double.parseDouble(qua);
		String pro=rs.getString(5);
		price=Double.parseDouble(pro);
		total=quantity*price;
		sum=sum+total;
	}
	
	String totalAmount=String.valueOf(sum);
	session.setAttribute("totalAmount", totalAmount);
}catch(Exception e)
{
	e.printStackTrace();
}

%>
<h1>PAYMENT DETAILS</h1>

		<div class="containerw3layouts-agileits">
		<form action="PaymentOrder" method="post" id="Payment">

				<fieldset>
					<legend>Account Details :</legend>
					<div class="form-group agileinfo">
						<label for="Name">Name</label>
						<input id="Name" name="name" type="text"  autocomplete="off" pattern="[A-Za-z .]+" class="form-control" placeholder="Name" required>
					</div>
				
					<div class="form-group">
						<label for="CardNumber"  >Card Number</label>
						
							<input id="CardNumber" type="text" class="form-control" autocomplete="off" name="cardnumber" pattern="[0-9]{16}" title="Enter 16 digit number" placeholder="Card Number" required>
					</div>
			<!-- 		<div class="form-group">
    <label for="CreditcardMonth" class="col-sm-2 control-label">Expiration</label>
    <div class="col-sm-10">
        <div class="row">
            <div class="col-xs-6">
                <input type="text" id="CreditcardMonth" name="month" autocomplete="off" class="form-control w3-agileits col-sm-2" min="1" max="12" placeholder="Month (1-12)" required>
            </div>
            <div class="col-xs-6">
                <input type="text" id="CreditcardYear" name="year" autocomplete="off" class="form-control agileits-w3layouts" min="2024" max="2034" placeholder="Year (2024-2034)" required>
            </div>
        </div>
    </div>
</div>-->
<div class="form-group">
    <label for="Expiration" class="control-label">Expiration</label>
    <input id="Expiration" type="text" name="expiration" autocomplete="off" class="form-control" pattern="(0[1-9]|1[0-2])\/(20[2-3][0-9])" placeholder="MM/YYYY" required>
</div>

					<div class="form-group"><br>
						<label for="cvv" class="col-sm-2 agileits-w3layouts control-label">CVV</label>
							<input id="cvv" type="password" pattern="[0-9]{3}" autocomplete="off" title="Enter 3 digit number" placeholder="CVV Number" required class="form-control">
						</div>
		<div>			
<div class="form-group ">
    <label for="CardNumber">Total Amount</label>
    <input id="TotalAmount" type="text" style=" background: transparent;" class="form-control custom-input transparent-bg" value="${totalAmount}" readonly>
</div>

</div>
<!-- <div style="margin-top: 20px;">
            
            <button type="submit" class="btn btn-primary custom-btn" style="float: right;">Pay Amount</button>
            <a href="eco_homepage.jsp" class="btn btn-primary custom-btn" role="button" style="float: left;">Cancel</a>
        </div>-->
        <div class="center" >
    <a href="eco_homepage.jsp" class="btn btn-primary custom-btn" role="button" style="border: none; margin-right: 100px;">Cancel</a>
    <input type="submit" value="Pay Amount" class="btn btn-primary custom-btn" style="border: none; margin-left: 290px;">
</div>
<script>
document.getElementById('CreditcardMonth').addEventListener('input', function() {
    var month = parseInt(this.value);
    if (isNaN(month) || month < 1 || month > 12) {
        this.setCustomValidity('Please enter a valid month (1-12).');
    } else {
        this.setCustomValidity('');
    }
});

document.getElementById('CreditcardYear').addEventListener('input', function() {
    var year = parseInt(this.value);
    if (isNaN(year) || year < 2024 || year > 2034) {
        this.setCustomValidity('Please enter a valid year (2024-2034).');
    } else {
        this.setCustomValidity('');
    }
});
</script>
</body>
</html>