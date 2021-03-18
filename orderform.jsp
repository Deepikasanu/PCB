<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-1.8.3.min.js"></script>
	<script src="js/jquery.elevatezoom.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
<%@ page import="com.pharmacy.CartController" %>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="images/2f69af55-71ac-43eb-8c6d-4efa4497be44.png" title="medicalpluse" /></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.html">About</a>
                    </li>
<!--                     <li> -->
<!--                     <a href="change.jsp">Change Password</a></li> -->
                    
                    <li>
                    <a href="feedback.html">Feedback</a>
                    </li>
                    <li>
                        <a href="Userout.jsp">Logout</a>
                    </li>
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<br><br>

 <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Categories</p>
                <div class="list-group">
                    <a href="babyprooduct.html" class="list-group-item">Baby Care</a>
                    <a href="Health.html" class="list-group-item">Health Care</a>
                    <a href="vitamin.html" class="list-group-item">Vitamins</a>
                </div>
            </div>


 <div class="col-md-9">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
             
    <form id="form1"   action="OrderServlet"  method="post">

  

    <h2> Fill Order Form Here:</h2>

      <table border="1" bgcolor="grey" style="color:blue">
      
      
      <tr>

                        
 
                        <td>

                            <input type="hidden" name="oid" required/>

                        </td>

                    </tr>
                <tr>

                        <td>

                            <b> Name:</b>

                        </td>
 
                        <td>

                            <input type="text" name="name" pattern="[a-zA-Z]{6,}" title="Minimum 6 letters Character" required/>

                        </td>

                    </tr>
                    
                    <tr>

                        <td>

                            <b>Mobile No:</b>

                        </td>
 
                        <td>

                            <input type="text" name="cno" pattern="[789][0-9]{9}" required/>

                        </td>

                    </tr>
                    
                     <tr>

                        <td>

                            <b>Shipping Address:</b>

                        </td>

                        <td>

                            <textarea name="desc" id="desc" required/>
                            </textarea>

                        </td>

                    </tr>
                    
                    <tr>

                        <td>

                            <b>City:</b>

                        </td>
 
                        <td>

                            <input type="text" name="cty" required/>

                        </td>

                    </tr>
                    
                    <tr>

                        <td>

                            <b>State:</b>

                        </td>
 
                        <td>

                            <input type="text" name="stat" required/>

                        </td>

                    </tr>
                    
                     <tr>

                        <td>

                            <b>PinCode:</b>

                        </td>
 
                        <td>

                            <input type="text" name="pin" required/>

                        </td>

                    </tr>
                    
                    <tr>

                        <td>

                            <b>Net Price:</b>

                        </td>
 
                        <td>
                          
                            <input type="text"   name="netprice" value="<%=session.getAttribute("orderTotal") %>"/>

                        </td>

                    </tr>
                    
                     
                    </table>
                   
                            <input type="submit" value="Submit" id="box">

                     
                    </form>
                   
             </div>

</body>
</html>