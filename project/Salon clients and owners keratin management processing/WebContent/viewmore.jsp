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
<style>
    .product-box {
        width: 90%;
         height: auto;
        margin: auto; 
        border: 1px auto #ccc;
        padding: 20px;
        box-sizing: border-box;
         background-color: #f9f9f9; /**/
    }
    .product-details {
        text-align: center;
    }
    .product-details img {
       display: block; 
       margin: 0 auto; 
       width: 280px; 
       height: 280px
        border: 1px solid #ddd; /**/
          border-radius: 5px; /**/
    }
    
    .product-details h2 {
    margin-top: 10px; /* Adding some space between image and product name */
}
/**/
.product-details input[type="number"] {
    width: 50px; /* Adjusting width of quantity input field */
    padding: 5px; /* Adding padding to the input field */
    margin-bottom: 10px; /* Adding some space below the input field */
}  /**/
/**/
.product-details input[type="submit"] {
    background-color: #007bff; /* Changing button background color */
    color: #fff; /* Changing button text color */
    border: none; /* Removing button border */
    padding: 10px 20px; /* Adding padding to the button */
    cursor: pointer; /* Changing cursor to pointer on hover */
}

.product-details input[type="submit"]:hover {
    background-color: #0056b3; /* Changing button background color on hover */
} /**/
    .quantity-input {
        margin-bottom: 10px;
    }
    label{
    text-transform:bold;
    }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View More Details Of Product</title>
</head>
<body>
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
	        <div class="product-box">
	        <div class="product-details">
        	<img src="<%= path %>" alt="Product Image">
        	  <h2><%= productName %></h2>
        	<label>Product Type: <%= productType %></label><br>
        	<label>Price: <%= price %></label><br>
        	<label>Type: <%= type %></label><br>
        	<label>ingrediants:<%=ing %></label><br> 
        	       	
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
	        </div>
	        </div>
	        <%
	 } %>
<%	         
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>