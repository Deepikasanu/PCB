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

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<p><font face="Verdana, Arial, Helvetica, sans-serif"><strong>Shopping Cart</strong></font></p>

<table width="75%" border="1">
  <tr bgcolor="#CCCCCC">
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Model
      Description</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
<!--     <td><strong><font size="2" face="Verdana, Arial,Helvetica,sans-serif">Image</font></strong></td> -->
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
      Price</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
  </tr>
  <jsp:useBean id="cart" scope="session" class="shoppingcart.bean.CartBean" />
  <c:if test="${cart.lineItemCount==0}">
  <tr>
  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
  </tr>
  </c:if>
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="CartController">
  <tr>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.partNumber}"/></b><br/>
      <c:out value="${cartItem.modelDescription}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'><input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> <input type="submit" name="action" value="Update">
 <br/>         <input type="submit" name="action" value="Delete"></font></td>
<%--  <td><font size="2" face="Verdana,Arial,Helvetica,sans-serif"> <b><c:out value="${cartItem.iimage}"/></b><img src="images/one.png" alt="image" height="150" width="150"/></font></td> --%>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.unitCost}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.totalCost}"/></font></td>
  </tr>
  </form>
  </c:forEach>
  <tr>
    <td colspan="2"> </td>
    <td> </td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal:<input type="hidden" id="cost" name="cost" value="${cart.orderTotal}"/>$<c:out value="${cart.orderTotal}"/></font></td>
  </tr>
  
</table><br><br>
<center>
<p><a href="Product.html" mce_href="Product.html"><b>Continue Shopping</a> </p>
<a href="Payment.jsp""><button>Check Out</button></a></center>
</div>
</body>
</html>