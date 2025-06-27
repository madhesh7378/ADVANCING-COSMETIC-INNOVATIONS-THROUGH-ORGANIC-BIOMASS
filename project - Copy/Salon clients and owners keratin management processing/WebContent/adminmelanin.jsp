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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Melanin Report</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Rate My Website  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="pay/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet"><base>
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

    table {
      
        max-width: 80%;
        margin: 20px auto;
        background: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow-x: auto;
        border-collapse: collapse;
    }

    th, td {
        padding: 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
       
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
        margin: 20px 0;
        font-size: 16px;
        color: #fff;
        background-color: #333;
        text-decoration: none;
        border-radius: 5px;
    }

    .back-button:hover {
        background-color: #555;
    }
    .accept-btn, .reject-btn {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}
.back-button:hover {
        background-color: #555; /* New background color on hover */
    }
</style>
</head>
<%
Connection conn=Dbconn.getconnection();
String qry="select * from melanin_report";
PreparedStatement ps=conn.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
%>
<body class="agileits_w3layouts">
	  <section class="error-page">
    <div class="covers-main w3layouts">
        <div class="wrapper">
            <div class="main-cover w3">
                <h1>MELANIN REPORT</h1>
                <div style="overflow-x: auto;">
                <table>
                    <thead>
                        <tr>
                            <th>BATCH</th>
                            <th>CHEMICAL NAME</th>
                            <th>IONIC AMOUNT(G)</th>
                            <th>MOLECULAR WEIGHT(G)</th>
                            <th>TEMPERATURE(°C)</th>
                            <th>APPERANCE</th>
                            <th>RESULT</th>                  
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs.next()) {
                        	
                        %>
                        <tr>
                           <td><%= rs.getString(1) %></td>
                           <td><%= rs.getString(7) %></td>
                           <td><%= rs.getString(2) %></td>
                           <td><%= rs.getString(3) %></td>
                           <td><%= rs.getString(4) %></td>
                           <td><%= rs.getString(5) %></td>
                           <td><%= rs.getString(6) %></td>
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
                </div>
              <div style="text-align: center;">
                    <a href="selectprocess.jsp" class="btn btn-primary back-button">Go Back</a>
                </div>
            </div>
        </div>
    </div>
</section>
	</div>
</body>
</html>