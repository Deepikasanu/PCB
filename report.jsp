<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style1.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		 <meta name="viewport" content="width=device-width, initial-scale=1">
		 <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
   		 <!-- webfonts -->
   		 <link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>
   		  <!-- webfonts -->
   		  
   		  <style>
   		  
   		 
   		  
   		  .dropbtn {
    background-color:;
    color: black;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: ;
}
   		  
   		  </style>
</head>
<body>
<div class="header">
				<div class="container">
					<!-- logo -->
					<div class="logo">
						<a href="index.html"><img src="images/2f69af55-71ac-43eb-8c6d-4efa4497be44.png" title="medicalpluse" /></a>
					</div><h4 style="color:#19b5fe">  
					
					<!-- logo -->
					<!-- top-nav -->
					<div class="top-nav">
						<span class="menu"> </span>
						<ul>
<!-- 						<li class="active"><a href="#">Medicines</a></li> -->
						<div class="dropdown">
                        <button class="dropbtn">Medicine</button>
						<div class="dropdown-content">
                        <a href="tablet.jsp">Add Tablet</a>
                              <a href="Babycare.jsp">Add BabyCare</a>
                              <a href="HealthCare.jsp">Add HealthCare</a>
                                   </div></div>
							
							<li><a href="viewfeedback.jsp">View Feedback</a></li>
							<!-- <li><a href="services.html">Services</a></li>
							<li><a href="blog.html">Blog</a></li> -->
							<li><a href="#">Add Distributor</a>
							<li><a href="Logout.jsp">Logout</a>
							<li><a href="change.jsp">Change Password</a>
							<li><a href="report.jsp">Report</a>
							
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
					
					 </div>
              <div class="col-md-9">
              <a href="ProductPdf.jsp"><u>BabyCare Product Report</u></a>&nbsp;<br><br>
              <a href="#"><u>Drugs Report</u></a><br><br>
               <a href="orderpdf.jsp"><u>Order Report</u></a><br><br>
              <a href="#"><u>Vitamin Report</u></a>
              
              
              </div>
            
</body>
</html>