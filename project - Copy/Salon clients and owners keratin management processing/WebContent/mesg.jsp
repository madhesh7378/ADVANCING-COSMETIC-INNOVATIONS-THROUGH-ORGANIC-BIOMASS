<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords"
        content="Wed Error Page Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!-- //Meta tag Keywords -->
    <link rel="stylesheet" href="show/css/style.css" type="text/css" media="all" /><!-- Style-CSS -->
    <link href="show/css/font-awesome.css" rel="stylesheet"><!-- font-awesome-icons -->
<title>Your Message</title>
</head>
<body>
<%
String totalAmount = (String) request.getAttribute("totalAmount");
String balanceAmount = (String) request.getAttribute("balanceAmount");
String initialAmount = (String) request.getAttribute("initialAmount");
%>
    <section class="error-page">
        <div class="covers-main w3layouts">
            <div class="wrapper">
                <div class="main-cover w3">
                    <h1>
                        <a href="ProductCalculate" class="logo">Message Display</a>
                    </h1>
                    <p class="form-text">Your Order Has Been Accepted SucessFully Your Total Amount For The Product Is Rs. <%= totalAmount %> And You Need 
                    To Pay The Initial Amount To Confirm Your Order. And Your Initial Amount Is Rs.<%= initialAmount %> Once You paid The Initial Amount You 
                    Can Pay The Balance Amount After Receiving The Product. Your Balance Amount Is :-<%=balanceAmount %> </p>
                   <a href="Payment.jsp" style="    border: none;
    font-weight: 600;
    display: inline-block;
    font-size: 16px;
    color: #fff;
    background: rgba(255, 255, 255, 0.16);
    text-align: center;
    padding: 12px 18px;
    margin-top: 4em;
    box-shadow: 0px 3px 4px 2px rgba(14, 14, 14, 0.04);">Make Payment</a> <a href="index.html" class="back-button">Back to Home</a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>