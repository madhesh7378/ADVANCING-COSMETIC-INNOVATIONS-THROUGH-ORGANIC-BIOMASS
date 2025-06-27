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
<title>Display Cart</title>
<style>
table {
  background: #012B39;
  border-radius: 0.25em;
  border-collapse: collapse;
  border-radius: 15px;
   width: 80%;
  margin: 1em;
    margin-left: auto;  
  margin-right: auto; 
  margin-top: 0;
  
}
th {
  border-bottom: 1px solid #364043;
  color: #E2B842;
  font-size: 0.85em;
  font-weight: 600;
  padding: 0.5em 1em;
  text-align: left;
  
}
td {
  color: #fff;
  font-weight: 400;
  padding: 0.65em 1em;  
   
}
table {
  margin-top: 0; /* Removed negative margin */
}

h1 {
  text-align: center; /* Center align the text */
  margin-top: -40px; /* Adjusted margin to move the heading up */
  color: #black; /* Text color for visibility */
}

body
{
  padding: 3em 0;
 	background: url("images/bg.jpg"); 
	-background-attachment:fixed;
	background-size:cover;
	min-height: 80vh; 
	display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
}

button, input[type="submit"] {
  background-color: #E2B842;
  border: none;
  border-radius: 0.25em;
  color: #012B39;
  cursor: pointer;
  font-size: 1em;
  font-weight: bold;
  margin: 0.5em;
  padding: 0.5em 1em;
  text-align: center;
  transition: background-color 0.3s ease;
}
/* Hover effect for buttons */
button:hover, input[type="submit"]:hover {
  background-color: #C29C34;
}

    form {
  display: inline; 
} 
input[type="submit"].delete-button {
  background-color: #FF5733; 
  color: white;
}
input[type="submit"].goback-button {
  background-color: #808080; 
  color: white;
  margin-right: auto;
}
input[type="submit"].checkout-button {
  background-color: #4CAF50; 
  color: white;
  margin-left: auto;
}
button:hover, input[type="submit"]:hover {
  opacity: 0.8;
}
.c
{
padding:15px;
padding-left: 33px;
}
.a
{
padding:15px;
padding-left: 50px;
}
</style>
</head>
<body>

<%
boolean cartEmpty = true; 
String email = (String) session.getAttribute("userEmail");
try
{
	Connection conn=Dbconn.getconnection();
	String qry = "select * from temp_order where email='"+email+"'";
	PreparedStatement pstmt = conn.prepareStatement(qry);
	ResultSet rs = pstmt.executeQuery();
%>
<h1>CART ITEMS</h1>
<table>
  <thead>
    <tr>
      <th>PRODUCT NAME</th>
      <th>QUANTITY</th>
      <th>AMOUNT PER PIC</th>
      <th>VOLUME</th>
      <th class="a">      QUANTITY      </th>
      <th class="c">    ACTION</th>
  </thead>
  <tbody>
 <%
while(rs.next()) {
	        cartEmpty = false;
%>
<tr>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(9)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
      <td> 
    <form action="UpdateProduct" method="post">
      <input type="number" id="quantity" name="quantity" min="1" value="<%= rs.getString(9) %>" style="width: 50px; height: 25px;">
        <input type="hidden" name="id" value="<%= rs.getString(1) %>" >
        <input type="submit"  value="Update"> 
    </form>
    </td>
    <form action="DeleteTemp" method="post">
        <input type="hidden" name="id" value="<%= rs.getString(1) %>">
        <td><input type="submit" value="Delete" class="delete-button"></td>
    </form>       
</tr>
<%
session.setAttribute("product_name",rs.getString(2));
session.setAttribute("product_quantity", rs.getString(9));
}
%>
<%}catch(Exception e)
{
	e.printStackTrace();
}
%>
</tbody>
</table>
<div class="center">
<% 
if (!cartEmpty) {
%>
    <form action="Payment.jsp" method="post">
        <input type="submit" value="Checkout" class="checkout-button">
    </form>
<%
}
%>
</form>
<form action="eco_homepage.jsp" >
<input type="submit" value="Go Back" class="goback-button">
</form>
</div>
</body>
</html>