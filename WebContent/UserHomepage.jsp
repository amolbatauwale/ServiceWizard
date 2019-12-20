<%@page import="javax.servlet.http.HttpSession" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@page import="javax.websocket.Session"%>
<html>
	<head>
		<title>Service-Wizard</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/home1.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		  <meta name="viewport" content="width=device-width, initial-scale=1">
		 <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
   		 <!-- webfonts -->
   		 <link href='http://fonts.googleapis.com/css?family=Raleway:200,400,300,600,500,900,700,100,800|Comfortaa:700' rel='stylesheet' type='text/css'>
   		 <link href='http://fonts.googleapis.com/css?family=Comfortaa:700,300,400' rel='stylesheet' type='text/css'>
   		  <!-- webfonts -->
	</head>
	<body>
		<!-- container -->
		<!-- header -->
		<div class="header">
			<div class="container">
				<!-- logo -->
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="carwash" /></a>
				</div>
				<!-- /logo -->
				<!-- top-nav -->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="complent.jsp">Complent</a></li>
						<li><a href="Buy.html">Buy</a></li>
						<li><a href="Service.html">Service</a></li>
						<li><a href="logout.jsp">Logout</a></li>
						<div class="clearfix"> </div>
					</ul>
					
				</div>
				</div>
				</span>
				<div>
				<%
				 
				if(session!=null)
				{
					String n=(String)session.getAttribute("username");
					out.println("Hello"+" "+ n + " "+"Welcome to Service Wizard");
					 
				}
				else
				{
					out.print("please login first");
					RequestDispatcher re=request.getRequestDispatcher("AdminLogin.html");
					re.include(request, response);
				}
				%>
			<!-- script-for-nav -->
				</div>
		<!-- /container -->
	</body>
</html>

