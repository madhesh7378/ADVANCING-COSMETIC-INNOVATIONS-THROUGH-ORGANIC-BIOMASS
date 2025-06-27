<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="dbconnection.Dbconn"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Blob"%>
<%@ page import="java.util.Random"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<title>More About Products</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="E Shop Product Details Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Android Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href='//fonts.googleapis.com/css?family=Raleway:400,500,600,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="qre/css/style.css" type="text/css" media="all" />
<style>
.add-to-cart-button {
    background-color: #28a745; 
    color: white; 
    border: none; 
    padding: 10px 20px; 
    text-align: center; 
    text-decoration: none; 
    display: inline-block; 
    font-size: 16px; 
    margin: 10px 2px; 
    cursor: pointer; 
    border-radius: 5px; 
    transition: background-color 0.3s; 
    float:right; 
}



.add-to-cart-button:hover {
    background-color: #218838; 
}
.go-back-button {
    background-color: #6c757d; 
    color: white; 
    border: none; 
    padding: 10px 20px; 
    text-align: center; 
    text-decoration: none; 
    display: inline-block; 
    font-size: 16px; 
    margin: 10px 2px; 
    cursor: pointer; 
    border-radius: 5px; 
    transition: background-color 0.3s; 
    float:left;
}

.go-back-button:hover {
    background-color: #5a6268; 
}
.cart-container {
    display: flex; 
    justify-content: space-between; 
    align-items: center; 
    width: 100%; 
}
     
.ingredients-label {
    width: 150px; /* Adjust width as needed */
    display: inline-block;
    text-align: left;
}

.ingredients-value {
    display: inline-block;
    text-align: right;
    width: calc(100% - 150px); /* Adjust width calculation based on label width */
}
</style>
</head>
<body>
<div class="content">
<h1>More About Products</h1>

<div class="container">
<%@ page session="true" %>
<%
String id=request.getParameter("id");
String email = (String) session.getAttribute("userEmail");
try {
    Connection conn = Dbconn.getconnection();
    String qry = "select * from admin_files where pro_id='" + id + "'";
    PreparedStatement pstmt = conn.prepareStatement(qry);
    ResultSet rs = pstmt.executeQuery();
    if (rs.next()) {
        String pid = rs.getString("pro_id");
        String productName = rs.getString("product_name");
        String productdec = rs.getString("product_desc");
        String productType = rs.getString("product_type");
        String price = rs.getString("price");
        String vol = rs.getString("volume");
        String type = rs.getString("type");
        String ing = rs.getString("ingrediants");
        String pur = rs.getString("purpose");
        String path = rs.getString("path");
%>

<h2><%= productName %></h2>
<div class="product">
    <div class="product-image">
        <img src="<%= path %>" alt="Product Image">
    </div>
    <div class="product-info">
    <p><span>Price</span>Rs.<%= price %></p>
        <p><span>Type</span></p><p class="j"><%= type %></p>
        <p><span>Ingredients</span></p><p class="j"><%= ing %></p>
        <p><span>Availability</span>In Stock</p>
        <p><span>Shipping</span>Free</p>
        <form action="TempOrder" method="post">
            <input type="hidden" name="id" value="<%= pid %>">
            <input type="hidden" name="productName" value="<%= productName %>">
            <input type="hidden" name="productdec" value="<%= productdec %>">
            <input type="hidden" name="productType" value="<%= productType %>">
            <input type="hidden" name="vol" value="<%= vol %>">
            <input type="hidden" name="type" value="<%= type %>">
            <input type="hidden" name="price" value="<%= price %>">
        	<input type="hidden" name="ingredients" value="<%= ing %>">
            <input type="hidden" name="img" value="<%= path %>">
            <input type="hidden" name="email" value="<%= email %>">
            <p><span>Quantity</span>
                <input type="number" name="qua" value="1" min="1">
            </p>
        <divdiv style="overflow: auto;">
    <a href="eco_homepage.jsp" class="go-back-button">Go Back</a>
    <input type="submit" value="Add to Cart" class="add-to-cart-button">
</div>
        </form>
    </div>
    <div class="clear"></div>
</div>
<%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</div>
</div>
</body>
</html>
