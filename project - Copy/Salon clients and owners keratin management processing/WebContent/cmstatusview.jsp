<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="search/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Property Search Widget Form  Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'></head>
<link href='//fonts.googleapis.com/css?family=Josefin+Sans:400,100,100italic,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!-- js -->
<script type="text/javascript" src="search/js/jquery-2.1.4.min.js"></script>
<title>Employee Status</title>
<style>
.inline-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
     margin-top: 20px;
}
.inline-container input[type="submit"],
.inline-container a {
    width: auto;
    display: inline-block;
    margin: 0;
    padding: 0.4em 1em;
    font-size: 1.3em;
    text-align: center;
}
.inline-container a {
    background: #fd7622;
    color: #fff;
    border: none;
    cursor: pointer;
    outline: none;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
}
.property-bottom input[type="email"] {
    padding: 10px;
    font-size: 1em;
    border: 1px solid #ccc;
    border-radius: 4px;
    width: calc(100% - 22px); 
    margin-bottom: 10px;
    margin-top: 20px;
}
body
{
background:url("images/ope.jpg");
background-size: cover;
    font-family: 'Open Sans', sans-serif;
   /* background-color: #105469;*/
}
.property-section h2 {
    margin-top: 10px; 
}
a:hover {
    background: #32A09F;
}
h1
{
color:black;
}
</style>
</head>
<body>
<div class="header">
			<h1>Check Your Collection Employee Status</h1>
		</div>
		<div class="main">
				<div class="main-section">
					<div class="property-section">
						<h2>Check Status</h2>
						<div class="property-bottom">
							<form action="cmstatus.jsp">
								<input type="email" name="em" pattern="^[a-zA-Z0-9.]+@gmail\.com$" placeholder="Enter Your Registred Email" autocomplete="off"  required>
								<br>
								   <div class="inline-container">
                        <input type="submit" value="Check Status">
                        <a href="index.html">Go Back</a>
                    </div>
							</form>
						</div>
					</div>
				</div>
			</div>
</body>
</html>