<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Shop Homepage</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
       h2{

        caption-side: unset;
        color:purple;
        text-decoration: inherit;
        display: inline-block;
       }
    </style>
</head>
<body>
<div class="header_top_right">
			    <div class="search_box">
				   <!--  <form>
				    	<input type="text" value="Search for Products" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search for Products';}"><input type="submit" value="SEARCH">
				    </form> -->
			    </div>
			    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
   <!--  <div class="shopping_cart">
					<div class="cart">
						<a href="#" title="View my shopping cart" rel="nofollow">
							<strong class="opencart"> </strong>
								<span class="cart_title">Cart</span>
									<span class="no_product">(empty)</span>
							</a>
						</div>
			      </div> -->
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img alt="" src="images/2f69af55-71ac-43eb-8c6d-4efa4497be44.png"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-na vbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                  <!--   <li>
                        <a href="#">Profile</a>
                    </li>
 -->                    <li >
                        <a href="managecategory.jsp">Manage All</a>
                        
                    </li>
                    <!-- <li>
                        <a href="payment.jsp">Payment</a>
                    </li>
 -->                    <li class="active">
                    <a href="viewfeedback.jsp">View Feedback</a>
                    <li>
                        <a href="report.jsp">Report</a>
                    </li>
                    <li>
                        <a href="Logout.jsp">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

 <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Category wise</p>
                <div class="list-group">
                    <a href="Dual.jsp" class="list-group-item">Dual Sim</a>
                    <a href="Single.jsp" class="list-group-item">Single Sim</a>
                    <!-- <a href="#" class="list-group-item">Category 3</a> -->
                </div>
                 <p class="lead">Brand</p>
                 <div class="list-group">
                    <a href="Nokia.jsp" class="list-group-item">Nokia</a>
                    <a href="huwai.html" class="list-group-item">Huwaie</a>
                    <a href="#" class="list-group-item">HTC</a>
                    <a href="#" class="list-group-item">Sony Ericsson</a>
                    <a href="#" class="list-group-item">Moto</a>
                    <a href="#" class="list-group-item">Karbonn</a>
                    <a href="#" class="list-group-item">Micromax</a>
                </div>

            </div>




             <div class="col-md-9">
             
             <form action="mailJSP.jsp" method="post">

            <table>

                <tr><td><b><font color="red">To:

                    </td>

                    <td><b><b><input type="text" name="mail" value="Enter sender mail-id"/><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Subject:

                    </td>

                    <td>

                        <input type="text" name="sub" value="Enter Subject Line"><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Message Text:

                    </td>

                    <td>

                        <textarea rows="10" cols="50" name="mess"></textarea><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <input type="submit" value="Send">

                    </td>

                    <td>

                        <input type="reset" value="Reset">

                    </td>

                </tr>

            </table>

        </form>
      


             
             </div>
</body>
</html>