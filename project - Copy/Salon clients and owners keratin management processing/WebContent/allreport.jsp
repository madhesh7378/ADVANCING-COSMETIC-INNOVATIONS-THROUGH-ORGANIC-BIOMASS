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
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Report</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Rate My Website  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
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
        width: 5%;
        max-width: 100px;
        margin: 20px auto;
        background: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow-x: hidden;
        overflow: auto;
        border-collapse: collapse;
         white-space: nowrap;
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
 table#melanine-table,
    table#kertain-table {
        white-space: normal;
    }
     .download-button {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
       background-color: #4CAF50; 
        color: #333;
        text-decoration: none;
        border-radius: 5px;
        border: 1px solid #ffc107; 
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    .download-button:hover {
        background-color: #ffca28; /* Darker yellow on hover */
        color: #000; /* Dark text color on hover */
    }
</style>
</head>
<%
HttpSession s = request.getSession(); 
String batch=null;
String id=(String)request.getParameter("id");
s.setAttribute("mailid",id);
Connection conn=Dbconn.getconnection();
String qry="select * from hair_dataset where id='"+id+"'";
PreparedStatement ps=conn.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
%>
<body class="agileits_w3layouts">
	  <section class="error-page">
    <div class="covers-main w3layouts">
        <div class="wrapper">
            <div class="main-cover w3">
                <h1>SALOON REPORT</h1>
                <table>
                    <thead>
                        <tr>
                            <th>MONTH</th>
                            <th>TOTAL KG</th>
                            <th>HAIR TYPE</th>
                            <th>LENGTH</th>
                            <th>COLOUR</th>
                            <th>CONDITION</th>
                            <th>SERVICE TYPE</th>   
                            <th>BATCH</th>
                                         
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs.next()) {
                        	batch=rs.getString(9);  
                        	session.setAttribute("batch", batch);
                        %>
                        <tr>
                           <td><%= rs.getString(2) %></td>
                           <td><%= rs.getString(3) %></td>
                           <td><%= rs.getString(4) %></td>
                           <td><%= rs.getString(5) %></td>
                           <td><%= rs.getString(6) %></td>
                           <td><%= rs.getString(7) %></td>
                           <td><%= rs.getString(8) %></td>
                           <td><%= rs.getString(9) %></td>
                           
                        </tr>
                        <%
                        }
                        %>
                    </tbody>
                </table>
                <div style="center">
                <%
Connection conn1=Dbconn.getconnection();
String qry2="select * from accepted_report where batch='"+batch+"'";
PreparedStatement ps1=conn1.prepareStatement(qry2);
ResultSet rs1 = ps1.executeQuery();
%>
                 <h1>ACCEPTED COLLECTION REPORT</h1>
                <table>
                    <thead>
                        <tr>
                            <th>TOTAL KG</th>
                            <th>TOTAL MELANINE</th>
                            <th>TOTAL KERTAIN</th>
                            <th>BATCH</th>
                            <th>STATUS</th>                   
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs1.next()) {
                        	
                        %>
                        <tr>
                           <td><%= rs1.getString(2) %></td>
                           <td><%= rs1.getString(3) %></td>
                           <td><%= rs1.getString(4) %></td>
                           <td><%= rs1.getString(5) %></td>
                           <td><%= rs1.getString(6) %></td>
                        </tr>
                        <%                      
                        }
                        %>
                    </tbody>
                </table>
                <div style="center">
                <%
String qry3="select * from melanin_report where batch='"+batch+"'";
PreparedStatement ps2=conn.prepareStatement(qry3);
ResultSet rs2 = ps2.executeQuery();
%>
                 <h1>MELANINE REPORT</h1>
                <table id="melanine-table">
                    <thead>
                        <tr>
                            <th>BATCH</th>
                            <th>MELANINE IONIC AMOUNT</th>
                            <th>MOLECULAR WEIGHT</th>
                            <th>TEMPERATURE</th>
                            <th>APPERANCE</th>
                            <th>RESULT</th>
                            <th>FORMULA NAME</th>                   
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs2.next()) {
                        %>
                        <tr>
                         <td><%= rs2.getString(1) %></td>
                         <td><%= rs2.getString(2) %></td>
                         <td><%= rs2.getString(3) %></td>
                         <td><%= rs2.getString(4) %></td>
                         <td><%= rs2.getString(5) %></td>
                         <td><%= rs2.getString(6) %></td>
                         <td><%= rs2.getString(7) %></td>
                        </tr>
                        <%                      
                        }
                        %>
                    </tbody>
                </table>
                <div style="center">
                <%
String qry4="select * from kertain_report where batch='"+batch+"'";
PreparedStatement ps3=conn.prepareStatement(qry4);
ResultSet rs3 = ps3.executeQuery();
%>
                 <h1>KERTAIN REPORT</h1>
                <table id="kertain-table">
                    <thead>
                        <tr>
                            <th>BATCH</th>
                            <th>INITIAL PROTEIN</th>
                            <th>TEMPERATURE</th>
                            <th>REMAINING PROTEIN</th>
                            <th>SOLUBLITY</th>
                            <th>APPERANCE</th>
                            <th>RESULT</th>
                            <th>FORMULA NAME</th>                   
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs3.next()) {
                        	
                        %>
                        <tr>
                         <td><%= rs3.getString(1) %></td>
                         <td><%= rs3.getString(2) %></td>
                         <td><%= rs3.getString(3) %></td>
                         <td><%= rs3.getString(4) %></td>
                         <td><%= rs3.getString(5) %></td>
                         <td><%= rs3.getString(6) %></td>
                         <td><%= rs3.getString(7) %></td>
                         <td><%= rs3.getString(8) %></td>
                        </tr>
                        <%                      
                        }
                        %>
                    </tbody>
                </table>
               <div style="text-align: center; margin-top: 20px;">
    <a href="disprecord.jsp" class="back-button">Back to Home</a>
   <a href="download.jsp?id=<%= java.net.URLEncoder.encode(id, "UTF-8") %>" class="download-button">Download Report</a>
</div>
            </div>
        </div>
    </div>
</section>
	</div>
</body>
</html>