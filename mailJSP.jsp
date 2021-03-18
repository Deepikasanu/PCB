<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
 <%@ page import="javax.activation.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending Mail In JSP</title>
</head>
<body>


<%

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("mail");

    final String subject = request.getParameter("sub");

    final String messg = request.getParameter("mess");

 

    // Sender's email ID and password needs to be mentioned

    final String from = "onlinemobileshopping1234@gmail.com";

    final String pass = "quickstep";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = System.getProperties();

 

    // Defining properties

    props.put("mail.smtp.host", host);
    
   // props.put("mail.smtp.ssl",true);


    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>



<h1><center><font color="blue">Sending Mail Using JSP</font></h1>

<b><center><font color="red"><% out.println(result);%></b>


<%response.sendRedirect("Response.jsp"); %>
<b><center><font color="red"><% out.println("Massage sent successfully");%></b>
</body>
</html>