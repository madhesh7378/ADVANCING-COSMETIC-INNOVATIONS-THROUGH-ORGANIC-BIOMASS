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
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="x/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Shoe Cart Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--google fonts-->
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,600,700,900' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<style>
.container {
    display: flex;
    justify-content: center; 
}
.product-box {
    width: 150%;
    height: auto;
    margin: 0 auto; 
    border: 1px auto #ccc;
    padding: 20px;
    box-sizing: border-box;
    background-color: #f9f9f9;
     box-shadow: 10px 0px 15px -5px rgba(0,0,0,0.3);
}
.product-details {
    text-align: center;
}

.product-details img {
    display: block; 
    margin: 0 auto; 
    width: 280px; 
    height: 280px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.product-details h2 {
    margin-top: 10px;
}

.product-details input[type="number"] {
    width: 50px;
    padding: 5px;
    margin-bottom: 10px;
}

.product-details input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
}

.product-details input[type="submit"]:hover {
    background-color: #0056b3;
}

.quantity-input {
    margin-bottom: 10px;
}

.product-details label {
    font-weight: bold; 
}
.w3-agileits-info {
  margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;
}

</style>
</head>
<body>
<div class="element">
	<h1>Product Details</h1>
	<div class="element-main">
		<div class="element-top">
		<%@ page session="true" %>
            <%
            String id=request.getParameter("id");
            String email = (String) session.getAttribute("userEmail");
            try
            {
                Connection conn=Dbconn.getconnection();
                String qry = "select * from admin_files where pro_id='"+id+"'";
                PreparedStatement pstmt = conn.prepareStatement(qry);
                ResultSet rs = pstmt.executeQuery();
                 if (rs.next()) {
                     
                        String pid = rs.getString("pro_id");
                        String productName = rs.getString("product_name");
                        String productdec = rs.getString("product_desc");
                        String productType = rs.getString("product_type");
                        String price = rs.getString("price");
                        String vol=rs.getString("volume");
                        String type = rs.getString("type");
                        String ing=rs.getString("ingrediants");
                        String pur=rs.getString("purpose");
                        String path = rs.getString("path");
                        
                        %>
              
                        <img src="<%= path %>" alt="Product Image">
                          <label>Product Name : </label><%= productName %><br>
                        <label>Product Type : </label> <%= productType %><br>
                        <label>Price : </label> <%= price %><br>
                        <label>Type : </label> <%= type %><br>
                        <label>ingrediants : </label><%=ing %><br> 
                        
                     
                                
                        <form action="TempOrder" method="post">
                            <input type="hidden" name="id" value="<%=pid  %>">
                            <input type="hidden" name="productName" value="<%= productName %>">
                            <input type="hidden" name="productdec" value="<%= productdec %>">
                            <input type="hidden" name="productType" value="<%= productType %>">
                            <input type="hidden" name="vol" value="<%= vol %>">
                            <input type="hidden" name="type" value="<%= type %>">
                             <input type="hidden" name="price" value="<%=price %>">
                            <input type="hidden" name="ingredients" value="<%= ing %>">
                            <input type="hidden" name="img" value="<%= path %>">
                            <input type="hidden" name="email" value="<%=email %>">
                            <label>Quantity</label>
                            <input type="number" name="qua" value="qua" min=1>
                            <input type="submit" value="Add to Cart"><br>
                        </form>  
                         <form action="eco_homepage.jsp">
                         <input type="submit" value="Go Back">
                         </form>
                       
                        <%
                 } %>
            <%         
            } catch(Exception e)
            {
                e.printStackTrace();
            }
            %>
		</div>
		</div>
		</div>
</body>
</html>