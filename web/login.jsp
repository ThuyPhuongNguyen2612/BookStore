<!DOCTYPE html>
<html>
<head>
<title>Best Store</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
	<link rel="stylesheet" href="../FontAwesome/css/all.css">
	<!-- //animation-effect -->
</head>
	
<body>
<!-- header -->
<jsp:include page="/header"></jsp:include>
<!-- //header -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			<%
				if (request.getAttribute("error")!=null){
			%>
			<p style="color: red"><%=request.getAttribute("error")%></p>
			<%
				}
			%>
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form method="post" action="/login">
					<input name="uname" type="text" placeholder="Email" required=" " >
					<input name="pass" type="password" placeholder="Password" required=" " >
					<input type="hidden" name="from" value="${param.from}">
					<div class="forgot">
						<a href="#">Forgot Password?</a>
					</div>
					<input type="submit" value="Login">
				</form>
				<h6 class="animated wow slideInUp" data-wow-delay=".5s">Or</h6>
				<div class="animated wow slideInUp" data-wow-delay=".5s" style="padding-left: 5%">
					<img src="img/google_signin_dark.png" width="40%" />
					<img src="img/facebook_signin_dark.png" width="55%" />
				</div>
			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s"><a href="register.jsp">Register Here</a> (Or) go back to <a href="index.jsp">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>