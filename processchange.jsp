<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<%
//String userid = request.getParameter("user");
String pwd=request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/pms";
con = DriverManager.getConnection(url, "root", "Nitte");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from admin  where password= '"+ pwd + "'");
while (rs.next()) {
	//id=rs.getInt(1);
pass = rs.getString(2); 
} 
if(Newpass.equals(conpass))
{
if (pass.equals(pwd)) {
st = con.createStatement();
int i = st.executeUpdate("update admin set password='"+ Newpass + "'");
out.println("Password changed successfully");
st.close();
con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/

}
} catch (Exception e) {
out.println(e);
}
%>

<a href="Admin.html">Click Here</a>
</body>
</html>