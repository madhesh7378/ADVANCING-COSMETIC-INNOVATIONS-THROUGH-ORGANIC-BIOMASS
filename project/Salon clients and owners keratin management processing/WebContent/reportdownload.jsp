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
<title>Insert title here</title>
</head>
<body>
<%
String a = ""+session.getAttribute("mailid")+"";
String b = ""+session.getAttribute("batch")+"";
PrintWriter ou = response.getWriter();  
response.setContentType("text/html");  
String cpath="E:/Project1-Saloon/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Salon clients and owners keratin management processing";
String csv = cpath+"//reportmail//"+b+"-"+a+".pdf";
response.setContentType("application/pdf");   
response.setHeader("Content-Disposition","attachment; filename=\""+b+"-"+a+".pdf"+"\"");   
FileInputStream fileInputStream = new FileInputStream(csv);  
int i;   
while ((i=fileInputStream.read()) != -1) {  
ou.write(i);   
}   
fileInputStream.close();   
ou.close();    
%>
</body>
</html>