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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View LogStatus - Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,600);

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
  margin: 1em;
  margin-left: auto;  
  margin-right: auto; 
  margin-top: 1em; 
  
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
.disabled td {
  color: #4F5F64;
}
tbody tr {
  transition: background 0.25s ease;
}
tbody tr:hover {
  background: #014055;
}
h1
{
padding-top:80px;
text-align:center;
color:black;
}
body {
    background: url("images/s.jpg");
    background-size: cover;
    font-family: 'Open Sans', sans-serif;
    /* Optional: Fallback background color */
    background-color: #105469;
}
</style>

</head>
<body>
<h1>PROCESS ANALYSIS DETAILS AND STATUS</h1>
<table>
<%
Connection conn=Dbconn.getconnection();
String qry = "select * from process_analysis";
PreparedStatement ps = conn.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
%>
  <thead>
    <tr>
      <th style="text-align: center;">Employee Name</th>
      <th style="text-align: center;">Employee Email</th>
      <th style="text-align: center;">Phone Number</th>
      <th style="text-align: center;">Employee ID</th>
      <th style="text-align: center;">Password</th>
      <th style="text-align: center;">Status</th>
      <th style="text-align: center;">Action</th>
      
  </thead>
  <tbody>
   <%
  while(rs.next()) {
  %>
    <tr style="text-align: center;">
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <%
      if(rs.getString(6).equalsIgnoreCase("Accepted")){
    	  %>
    	  <td><a href="process_view.jsp?empname=<%=rs.getString(1)%>&&empmail=<%=rs.getString(2)%>&&password=<%=rs.getString(5)%>" class="btn btn-dark" style="pointer-events: none;text-decoration: none;color: black;">Accept</a>
          <br><br><a href="process_reject.jsp?empname=<%=rs.getString(1)%>&&empmail=<%=rs.getString(2)%>" class="btn btn-danger">Reject</a>     
          </td>
    	  <% 
      }
      else {
    	  %>
    	  <td><a href="process_view.jsp?empname=<%=rs.getString(1)%>&&empmail=<%=rs.getString(2)%>&&password=<%=rs.getString(5)%>" class="btn btn-success">Accept</a>
          <br><br><a href="process_reject.jsp?empname=<%=rs.getString(1)%>&&empmail=<%=rs.getString(2)%>" class="btn btn-danger">Reject</a>     
          </td>
    	  <% 
      }
      %>  
    </tr>
     <%
  }
  %>
  </tbody>
</table>
<br><center><a href="admlogstatus.jsp" class="btn btn-primary">Go Back</a></center>
</body>
</html>