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
    String name = request.getParameter("shopname");
    String coemail = request.getParameter("email");
    String pas = request.getParameter("password");
    String nn = "provided";
    
    // Setting email body content
    textPart.setText("<html><head>" +
            "<style type=\"text/css\">" +
            "</style>"
          + "</head>"
          + "<p>" + "Your Registered Mail ID by the name of <b>'" + coemail + "'</b> profile has been accepted successfully. Your password is <b>'" + pas + "'</b>. Make sure you enter this password while login." + "</p>"
          + "</html>", "ascii", "html");
    multipart.addBodyPart(textPart);
    
    // Message details
    String message1 = "Your Profile Accepted Successfully. Your password is '" + pas + "'.";
    
    // SMTP server details
    String host = "smtp.gmail.com";
    String user = "madheshmjsm7378@gmail.com";
    String pass = "ajlqmipjicrtaaup"; // Use a secure way to store password
    String to = "madheshmjsm7378@gmail.com";
    String from = "madheshmjsm7378@gmail.com";
    String subject = "Employee Acceptance Information";
    String messageText = message1;

    boolean sessionDebug = true;

    // Setting up mail server properties
    Properties props = System.getProperties();
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.port", "587"); // Port for TLS
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true"); // Enable TLS
    props.put("mail.smtp.socketFactory.fallback", "false"); // No fallback to SSL

    // Create the session and the message
    Session mailSession = Session.getDefaultInstance(props, null);
    mailSession.setDebug(sessionDebug);
    Message msg = new MimeMessage(mailSession);
    msg.setFrom(new InternetAddress(from));
    InternetAddress[] address = {new InternetAddress(to)};
    msg.setRecipients(Message.RecipientType.TO, address);
    msg.setSubject(subject);
    msg.setContent(multipart); // Using multipart for rich text
    Transport transport = mailSession.getTransport("smtp");

    // Connecting to the mail server
    transport.connect(host, user, pass);

    // Send the email message
    try {
        transport.sendMessage(msg, msg.getAllRecipients());
    } catch (Exception err) {
        out.println("Message not successfully sent"); 
    }
    transport.close();

    // Update status in the database
    String pstatus = "Accepted";
    Connection conn = Dbconn.getconnection();
    String sql = "update saloon_owner set status='" + pstatus + "' where password='" + pas + "'";
    PreparedStatement ps = conn.prepareStatement(sql);
    int status = ps.executeUpdate();

    // Check if status was updated successfully
    if (status > 0) {
        %>
        <script>
        alert("Acceptance details successfully sent to mail");
        window.location = "admlogstatus.jsp";
        </script>
        <% 
    } else {
        %>
        <script>
        alert("Acceptance details not successfully sent");
        window.location = "admlogstatus.jsp";
        </script>
        <% 
    }
} catch (Exception ex) {
    ex.printStackTrace();
}
%>
</body>
</html>
