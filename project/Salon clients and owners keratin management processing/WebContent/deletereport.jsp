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
<title>Delete Report</title>
</head>
<body>
<%
try
{
	HttpSession s = request.getSession();
	Connection conn=Dbconn.getconnection();
	String deletemail=(String)s.getAttribute("ownerMail");
	String amount=(String)s.getAttribute("amount");
	s.setAttribute("amount",amount);
	String status="rejected";
	String payment="not paid";
	
	PreparedStatement ps=conn.prepareStatement("insert into employee_status (id,batch,amount,status,account_number,name,payment_status) values (?,?,?,?,?,?,?)");
	ps.setString(1, deletemail);
	ps.setString(2, null);
	ps.setString(3, amount);

	ps.setString(4, status);
	ps.setString(5, null);
	ps.setString(6, null);
	ps.setString(7, payment);
	
	int x=ps.executeUpdate();
	
	String qry = "delete from hair_dataset where id='"+deletemail+"'";
	PreparedStatement ps2 = conn.prepareStatement(qry);
	int xop=ps2.executeUpdate();
	if(xop>0)
	{
		 out.print("<html><body><script>alert('DataSet Deleted Successful');</script></body></html>");
		 RequestDispatcher rss = request.getRequestDispatcher("saloonhome.jsp");
		 rss.include(request, response);
	}else
	{
		 out.print("<html><body><script>alert('DataSet Delete unsuccessful');</script></body></html>");
		 RequestDispatcher rss = request.getRequestDispatcher("saloonhome.jsp");
		 rss.include(request, response);
	}			
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>