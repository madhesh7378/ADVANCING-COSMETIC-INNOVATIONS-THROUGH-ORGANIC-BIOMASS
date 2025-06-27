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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Items</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="E Shop Cart Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Android Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<style type="text/css">
    @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,600);
    @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700);

    body {
        font-family: 'Roboto', sans-serif; /* Set default font */
        margin: 0;
        padding: 0;
       padding: 3em 0;
         background: #012B39;
   /* background: url("images/bg.jpg"); 
	background-attachment:fixed;
	background-size:cover;*/
       
    }

    h1 {
        text-align: center;
        padding: 20px 0;
    }

    .container {
        width: 80%;
        margin: 0 auto;
    }

    .main-bar {
        display: flex;
        justify-content: space-between;
        background-color: #012B39;
        border-radius: 0.25em;
        margin: 1em auto;
        padding: 10px 0;
    }

    .main-bar .product,
    .main-bar .quantity,
    .main-bar .price,
    .main-bar .volume {
        flex: 1;
        text-align: center;
    }

    .main-bar h3 {
        font-size: 1em;
        font-weight: 600;
        color: #fff;
        margin: 0;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #364043;
    }

    tr:hover {
        background-color: #014055;
    }

    form {
        display: inline;
    }

    form input[type="number"] {
        width: 50px;
    }

    form input[type="submit"] {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 5px 10px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 2px;
        cursor: pointer;
        border-radius: 3px;
    }

    form input[type="submit"]:hover {
        background-color: #45a049;
    }

    .btn-delete {
        background-color: #f44336;
    }

    .btn-delete:hover {
        background-color: #da190b;
    }
</style>
</head>
<body>
<%
String email = (String) session.getAttribute("userEmail");
try {
    Connection conn = Dbconn.getconnection();
    String qry = "select * from temp_order where email=?";
    PreparedStatement pstmt = conn.prepareStatement(qry);
    pstmt.setString(1, email);
    ResultSet rs = pstmt.executeQuery();
%>
<h1>CART ITEMS</h1>
<div class="container">
    <div class="main-bar">
       
        <div class="product">
            <h3>Product</h3>
        </div>
        <div class="quantity">
            <h3>Quantity</h3>
        </div>
        <div class="price">
            <h3>Price</h3>
        </div>
        <div class="volume">
            <h3>Volume</h3>
        </div>
    </div>
    <table>
        <tbody>
            <%
            while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString(2) %></td> 
                <td><%= rs.getString(9) %></td>
                <td>Rs. <%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %> ml</td> 
                <td>
                    <!-- Form for updating quantity -->
                    <form action="UpdateProduct" method="post">
                        <input type="number" id="quantity" name="quantity" min="1" value="<%= rs.getString(9) %>" style="width: 50px;">
                        <input type="hidden" name="id" value="<%= rs.getString(1) %>">
                        <input type="submit" value="Update">
                    </form>
                    <!-- Form for deleting the item -->
                    <form action="DeleteTemp" method="post" onsubmit="return confirm('Are you sure you want to delete this item?');">
                        <input type="hidden" name="id" value="<%= rs.getString(1) %>">
                        <input type="submit" value="Delete" class="btn-delete">
                    </form>
                </td>
            </tr>
            <%
            }
} catch (Exception e) {
    e.printStackTrace();
}
%>
        </tbody>
    </table>
</div>
</body>
</html>
