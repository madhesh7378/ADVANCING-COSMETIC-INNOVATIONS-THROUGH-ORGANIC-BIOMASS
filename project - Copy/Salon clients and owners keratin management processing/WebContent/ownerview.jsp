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
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Rate My Website  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="pay/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet"><base>
<title>Report Status</title>
<style>
    body {
        font-family: Arial, sans-serif; 
        background-size: cover;
        margin: 0;
        padding: 0;
    }
    
    h1 {
        text-align: center;
        margin-top: 20px;
        font-size: 2em;
        padding: 10px;
        background: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
    }
    .container {
        max-width: 800px;
        margin: 20px;
        background: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow-x: auto; /* Allow horizontal scroll if necessary */
        padding: 20px;
        text-align: center;
    }
    
    .button-container {
        text-align: center;
        margin-top: 20px;
    }

    table {
        width: 100%;
        max-width: 600px;
        margin: 20px auto;
        background: rgba(255, 255, 255, 0.8);
        border-radius: 0px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow-x: hidden;
        overflow: auto;
       /* display: block; 
        backdrop-filter: blur(80px);*/
        border-collapse: collapse;
    }

    th, td {
        padding: 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        white-space: nowrap;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #f5f5f5;
    }

    .back-button {
        display: inline-block;
        padding: 10px 20px;
        margin: 20px 0px; 
        font-size: 16px;
        color: #fff;
        background-color: #333;
        text-decoration: none;
        border-radius: 5px;
    }
     .btn {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        font-size: 16px;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

     .back-button:hover {
        background-color: #555;
    }
    .accept-btn:hover {
        background-color: darkgreen;
    }
    .btn btn-danger:hover {
        background-color: darkred;
    }
    .accept-btn {
    display: inline-block;
    padding: 10px 2000px;
     margin: 20px 10px; 
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}
.reject-btn {
    display: inline-block;
    padding: 10px 20px;
     margin: 20px 10px; 
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}


.opbuttonn {
    display: inline-block;
    padding: 10px 20px;
    margin: 20px 0;
    font-size: 16px;
    color: #fff;
    background-color: #333;
    text-decoration: none;
    border-radius: 5px;
}
.btn btn-danger:hover {
        background-color: #e00909;
    }
</style>
</head>
<body>
<%
Connection conn=Dbconn.getconnection();
String loginmail=(String)session.getAttribute("ownerMail");
String qry = "select * from fixed_amount where id='"+loginmail+"'";
PreparedStatement ps = conn.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
%>
<body class="agileits_w3layouts">
 <div class="w3layouts_main wrap">
	  <section class="error-page">
    <div class="covers-main w3layouts">
        <div class="wrapper">
            <div class="main-cover w3">
                <h1>REPORT</h1>
             <!--  <div class="container"> -->  
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>   
                            <th>BATCH</th> 
                            <th>AMOUNT</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getString(1) %></td>
                            <td><%= rs.getString(2) %></td>
                            <td><%= rs.getString(3) %></td>
                        </tr>
                        <%            
                        }
                        %>
                    </tbody>
                </table>
                <div class="button-container">
<a href="accountdetail.jsp" id="opbutton" class="btn btn-light" style="background-color:green; color: white; display: inline-block; padding: 10px 20px; text-decoration: none; border-radius: 5px;">Accept</a>

<a href="deletereport.jsp" id="opbutton" class="btn btn-danger" style="background-color: red; color: white; display: inline-block; padding: 10px 20px; text-decoration: none; border-radius: 5px;">Reject</a>

<a href="saloonhome.jsp" class="btn btn-primary back-button" style="background-color: blue; color: white; display: inline-block; padding: 10px 20px; text-decoration: none; border-radius: 5px;">Back to Home</a>
            </div>
        </div>
    </div>
</section>
</body>
</html>