<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbconnection.Dbconn"%>
<%@ page import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Multipart multipart = new MimeMultipart();
MimeBodyPart textPart = new MimeBodyPart();
try {
	
String name = request.getParameter("email");
String id = request.getParameter("Password");
String nn = "provided";
textPart.setText("<html><head>"+
        "<style type=\"text/css\">" +
        "</style>" +
      "</head>" +
      "<p>" + "Your Registered Mail ID by the name of <b>'" + name + "'</b> has been rejected. Make sure you enter the right credentials." + "</p>" +
      "</html>", "ascii", "html");
multipart.addBodyPart(textPart);

String message1 = "Your Profile Rejected. Your password is '" + id + "'.";
String host = "smtp.gmail.com";
String user = "madheshmjsm7378@gmail.com"; 
String pass = "ajlqmipjicrtaaup"; 
String to = "madheshmjsm7378@gmail.com";
String from = "madheshmjsm7378@gmail.com";
String subject = "Employee Rejected Information";
String messageText = message1;

boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.smtp.host", host);  // Correct property name
props.put("mail.smtp.auth", "true");  // Enable authentication
props.put("mail.smtp.starttls.enable", "true");  // Enable TLS (STARTTLS)
props.put("mail.smtp.port", "587");  // Use port 587 for TLS
props.put("mail.smtp.socketFactory.fallback", "false");

// No need to set SSL_FACTORY for STARTTLS

Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = { new InternetAddress(to) };
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html");
msg.setContent(multipart);

Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
    transport.sendMessage(msg, msg.getAllRecipients());
} catch (Exception err) {
    out.println("Message not successfully sent");
} 
transport.close();

String pstatus = "Rejected";  // Status should be "Rejected" for this case

Connection conn = Dbconn.getconnection();
String sql = "delete from saloon_owner where email='" + name + "'";
PreparedStatement ps = conn.prepareStatement(sql);
int status = ps.executeUpdate();

if(status > 0) {
    %>
    <script>
    alert("Rejected details successfully sent to mail");
    window.location = "admlogstatus.jsp";
    </script>
    <% 
} else {
    %>
    <script>
    alert("Rejected details not successfully sent");
    window.location = "admlogstatus.jsp";
    </script>
<% } 

}catch(Exception ex){
    ex.printStackTrace();
}
%>
</body>
</html>
