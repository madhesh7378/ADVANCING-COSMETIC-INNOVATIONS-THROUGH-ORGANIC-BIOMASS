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
<title>Collected Hair Data</title>
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
        width: 5%;
        max-width: 100px;
        margin: 20px auto;
        background: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
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
<form action="ConfirmReport" method="post">
<%
String mel,ker,hair;
Connection conn=Dbconn.getconnection();
HttpSession s=request.getSession();
String mail=(String)s.getAttribute("cmmail");
String omail=null,batch=null;
//String omail=(String)s.getAttribute("ownermail");
//String batch=(String)s.getAttribute("batch");
String qry="select * from collection_result where mail_id='"+mail+"'";
double totalMelanin=0.0,totalKeratin=0.0;
int totalhair=0;
PreparedStatement ps=conn.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
%>
<body class="agileits_w3layouts">
	  <section class="error-page">
    <div class="covers-main w3layouts">
        <div class="wrapper">
            <div class="main-cover w3">
                <h1>EXTRACTED DATA</h1>
                <table>
                    <thead>
                        <tr>
                            <th>EMPLOYEE ID</th>
                            <th>TOTAL MELANIN(G)</th>
                            <th>TOTAL KERTAIN(G)</th>
                            <th>TOTAL HAIR ()KG)</th>
                            <th>BATCH DETAILS   </th> 
                            <th>ACTION     </th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs.next()) {
                        	

            				mel=rs.getString(4);
            				ker=rs.getString(5);
            				hair=rs.getString(6);
            				omail=rs.getString(1);
            				batch=rs.getString(7);
            				totalMelanin +=Double.parseDouble(mel);
            				totalKeratin +=Double.parseDouble(ker); 
            				totalhair +=Integer.parseInt(hair);
            				
            				s.setAttribute("totalMelanin",totalMelanin);
            				s.setAttribute("totalKeratin",totalKeratin);
            				s.setAttribute("totalhair",totalhair);
            				s.setAttribute("batch",batch);
            				
                        }
                        %>
                        <tr>
                            <td><%= omail %>
                            <td><%= totalMelanin %></td>
                            <td><%= totalKeratin %></td>
                            <td><%= totalhair %></td>
                            <td><%= batch %></td>
                            <td><input id="acceptButton" onClick="hideAcceptButton()" type="submit" value="Accept" class="btn btn-primary back-button" style="background-color: blue; color: white; display: inline-block; padding: 10px 20px; text-decoration: none; border-radius: 5px;"></td>
                         </tr>
                    </tbody>
                </table> 
                 <div style="text-align: center;">
                    <a href="adminhomepage.jsp" class="btn btn-primary back-button">Back To Home</a>
                </div>
  </form>
  </div>
  </div>
</section>
<script>
        function hideAcceptButton() {
            // Hide the Accept button after clicking
            document.getElementById('acceptButton').style.display = 'none';
        }
    </script>
</body>
</html>