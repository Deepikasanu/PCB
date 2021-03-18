<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PMS</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String name=request.getParameter("usr"); 
session.getAttribute("name");
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","Nitte"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from register where name='"+name+"'"); 
if(rs.next()) 
{ 
if(rs.getString(5).equals(pwd)) 
{ 
out.println("welcome"+name); 

response.sendRedirect("Product.html");
} 
else 
{
out.println("Invalid password try again"); 
} 
} 
else 	
%>
<a href="Login.html">Back to login page</a>
</body>
</html>