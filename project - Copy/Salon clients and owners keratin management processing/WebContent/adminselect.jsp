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
<script language="javascript">
function SelectRedirect(){
switch(document.getElementById('s1').value)
{
case "viewdataset":
window.location="salonemployeedisplay.jsp";
break;
case "viewamountstatus":
window.location="AcceptedUserDisplay.jsp";
break;
default:
window.location="admlogstatus.jsp"; 
break;
} 
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Status Maintain</title>
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
.form {
display:flex;
justify-content: center;
align-items : center;
width: 350px;
margin: 0 auto;
height: 200px;
background-color: rgba(41, 39, 39, 0.3);
box-shadow: 0 5px 20px black;
}
h1
{
 padding-top: 80px;
text-align:center;
color: black;
}
body
{
background:url("images/123.jpg");
background-size: cover;
    font-family: 'Open Sans', sans-serif;
   /* background-color: #105469;*/
}

</style>
</head>
<body>
<h1>SALON OWNER AMOUNT AND DATASET STATUS</h1>
<br><div class="form">

<center><select style="background: #012B39;font-size : 20px;
  border-radius: 0.25em;
  color : white;
  border-collapse: collapse;
  margin: 1em;
  margin-left: auto;  
  margin-right: auto; 
  margin-top: 1em; " name="cause" id="s1" onChange="SelectRedirect();">
				<option value="none" selected="" disabled="">Select Module</option>
				<option value="viewdataset">View DataSet</option>
				<option value="viewamountstatus">View Amount Status</option>
	   </select></center>   
</div>
<br><center><a href="adminhomepage.jsp" class="btn btn-primary">Go Back</a></center>
</body>
</html>