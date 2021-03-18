<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Pharmacy</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-1.8.3.min.js"></script>
	<script src="js/jquery.elevatezoom.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
   
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
                <a class="navbar-brand" href="index.html"><img src="https://www.freelogoservices.com/api/main/images/1j+ojl1FOMkX9WypfBe43D6kjPWEpRNIkRvJwXs1M3EMoAJtlCgqgPVs...Pk+" title="medicalpluse" /></a>
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


<p><font size="3" face="Verdana, Arial, Helvetica, sans-serif"><strong>Model List
  </strong></font></p>
<a href="ShoppingCart.jsp" mce_href="ShoppingCart.jsp">View Cart</a>
<p/>    
<table width="75%" border="1">
  <tr>
    <td><form name="modelDetail1" method="POST" action="CartController">
 <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Model:</strong>
        Himalaya BabyCare</font><input type="hidden" name="modelNo" value="Himalaya BabyCare">
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Description:</strong>
        Babys skin is the most sensitive skin, especially the newborns. </font><input type="hidden" name="description" value="Babys skin is the most sensitive skin, especially the newborns"></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></font></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Image:</strong><input type="hidden" name="img" ><img src="images/himalaya-babycare.jpg"  alt="image"  width="150"height="150"/>
      <h:link  outcome="ShoppingCart"> 
      <h:graphicImage value="images/one.png" style="border:none"/>
      </h:link></font></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Price:</strong>
        549.00Rs </font><input type="hidden" name="price" value="549"></p><input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart">
      </form></td>
      
      </div>
</body>
</html>