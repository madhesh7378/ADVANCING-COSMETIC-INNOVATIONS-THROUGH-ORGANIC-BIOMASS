<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="dbconnection.Dbconn"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.Blob" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.sql.Connection" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="contents/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Catchy Login and Registration Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="contents/js/jquery-1.11.1.min.js"></script> 
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600,300italic,300' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Process Analysis Status</title>
<style>
*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: #105469;
  font-family: 'Open Sans', sans-serif;
}

table {
  background: #012B39;
  border-radius: 0.25em;
  border-collapse: collapse;
  margin: 1em auto; /* Centering the table */
  text-align: center; /* Centering text inside table */
}

th {
  border-bottom: 1px solid #364043;
  color: #E2B842;
  font-size: 0.85em;
  font-weight: 600;
  padding: 0.5em 1em;
  text-align: center; /* Centering table headings */
}

td {
  color: #fff;
  font-weight: 400;
  padding: 0.65em 1em;
  text-align: center; /* Centering table content */
}

body {
  background: url("images/true.jpg");
  background-size: cover;
  font-family: 'Open Sans', sans-serif;
}

.styled-button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  color: #007bff;
  background-color: transparent;
  border: 1px solid #007bff;
  border-radius: 4px;
  cursor: pointer;
  text-decoration: none;
}

tbody tr {
  transition: background 0.25s ease;
}

tbody tr:hover {
  background: #014055;
}

.styled-button:hover {
  color: #0000ff;
  border-color: #0000ff;
}

.styled-button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  color: #ffffff;
  background-color: #007bff;
  border: 1px solid #007bff;
  border-radius: 4px;
  cursor: pointer;
  text-decoration: none;
}
</style>
</head>
<body>
<%
String mail = request.getParameter("em");
Connection conn=Dbconn.getconnection();
String qry = "select * from process_analysis where empmail='"+mail+"'";
PreparedStatement ps = conn.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
%>
<h1 style="text-align: center;">PROCESS ANALYSIS REGISTERED STATUS</h1>
<table>
  <thead>
    <tr>
      <th>Employee Name</th>
      <th>Employee Email</th>
      <th>Phone Number</th>
      <th>Employee ID</th>
      <th>Employee Status</th>
    </tr>
  </thead>
  <tbody>
  <%
  while(rs.next()) {
  %>
    <tr>
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(6)%></td>
    </tr>
  <%
      }
  %>
  </tbody>
</table>
<form action="pastatusview.jsp" method="get" style="text-align: center;">
    <button type="submit" class="styled-button">Go Back</button>
</form>
</body>
</html>
