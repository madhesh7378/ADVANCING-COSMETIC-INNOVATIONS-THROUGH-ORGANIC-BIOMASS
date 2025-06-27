<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<%
	HttpSession session=request.getSession();
    session.invalidate(); // Terminate the session
    response.sendRedirect("index.html"); // Redirect to the home page or login page
%>