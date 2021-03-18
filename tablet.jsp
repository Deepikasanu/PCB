<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<script src="js/jquery.min.js"></script>	
<title>Market City</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
   		 <!-- webfonts -->
   		 <link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>
   		  <!-- webfonts -->
<link rel="stylesheet" href="http://www.html5andcss3.org/form.css" type="text/css"/>
<script type="text/javascript" src="http://www.html5andcss3.org/form.js"></script>
<script type="text/javascript">
		H5F.listen(window,"load",function () {
			H5F.setup(document.getElementById("signup"));
		},false);
	</script>
	
	<link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
<style type="text/css">
body{
background:url(images/7840663-Set.jpg);

}

</style>
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
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="Logout.jsp">Logout</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<form id="signup" action="TabletServlet" method="post">
  <h1></h1>
  <h2></h2>
  <fieldset>
   <legend>Add Tablets</legend>
   <ol>
   <li>
     <label for="state">Name</label>
     <select name="city" id="state">
      <option selected>Huggis</option>
      <option>D-cold</option>
      <option>Bruphine</option>
      <option>Sinarest</option>
     </select>
    </li>   
    
    <li>
     <label for="firstname">Company:</label>
     <input type="text" id="firstname" name="cmp" pattern="[a-zA-Z]{6,}" title="Minimum 6 letters Character" placeholder="Company" required />
    </li>
    <li>
    <label for="lastname">Quantity:</label>
    <input type="text" id="lastname" name="qty" placeholder="Quantity" required />
    </li>
    
 <li>
    <label for="lastname">Manufactured Date:</label>
    <input type="date" id="lastname" name="mdd" placeholder="Quantity" required />
    </li>
    <li>
    <label for="lastname">Expire Date:</label>
    <input type="date" id="lastname" name="erd" placeholder="Quantity" required />
    </li>
    
    <li>
    <label for="lastname">Price:</label>
    <input type="number" id="lastname" name="prc" step="10" min="15" max="999" placeholder="Price" required />
    </li>
    </ol>
    </fieldset>
  <input type="submit" value="Submit" style="background:#00C492; color:#fff;"/>
    
</form>
<script type="text/javascript">
$("input").blur(function(){
    $("span").text(this.checkValidity());
});

</script>
</body>
</html>