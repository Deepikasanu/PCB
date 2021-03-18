<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Pharmacy</title>
<script type="text/javascript" src="http://www.html5andcss3.org/form.js"></script>
<link rel="stylesheet" href="http://www.html5andcss3.org/form.css" type="text/css"/>
<script type="text/javascript">
		H5F.listen(window,"load",function () {
			H5F.setup(document.getElementById("signup"));
		},false);
	</script>
	<style type="text/css">
	body{
	
	background:url(images/sl1.jpg);
	}
	
	
	</style>
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
                <a class="navbar-brand" href="index.html"><img src="images/2f69af55-71ac-43eb-8c6d-4efa4497be44.png"/></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.html">About</a>
                    </li>
                    <li>
                        <a href="Logout.jsp">Logout</a>
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
    
    
    <form id="signup" action="DistributorServlet"  method="post">
  <h1></h1>
  <h2></h2>
  <fieldset>
   <legend>Distributor Entry</legend>
   <ol>
   <li>
     <label for="state"> Distributor Name</label>
      <input type="text" id="firstname" name="dname" pattern="[a-zA-Z]{6,}" title="Minimum 6 letters Character" placeholder="Enter Your name" required />
    </li>   
    
    <li>
     <label for="firstname">Agency Name:</label>
     <input type="text" id="firstname" name="aname"  placeholder="Enter Agency name" required />
    </li>
    <li>
    <label for="lastname">Product Distributor:</label>
    <input type="text" id="lastname" name="product" placeholder="Distributor for" required />
    </li>
    
 <li>
    <label for="lastname">Address:</label>
    <input type="text" id="lastname" name="add" placeholder="Enter Address" required />
    </li>
    <li>
    <label for="lastname">Mobile:</label>
    <input type="text" id="lastname" name="mobile" pattern="[789][0-9]{9}" placeholder="Enter Number" required/>
    </li>
    
    <li>
    <label for="lastname">Website:</label>
    <input type="url" id="lastname" name="web" placeholder="Website" required />
    </li>
    </ol>
    </fieldset>
  <input type="submit" value="Submit" style="background:#00C492; color:#fff;"/>
    
</form>
</body>
</html>