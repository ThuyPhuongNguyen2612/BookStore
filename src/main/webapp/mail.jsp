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
	<script src="js/index.js"></script>
	<!-- //js -->
	<!-- cart -->
	<script src="js/simpleCart.min.js"> </script>
	<!-- cart -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
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
			<li class="active">Mail Us</li>
		</ol>
	</div>
</div>
<!-- //breadcrumbs -->
<!-- mail -->
<div class="mail animated wow zoomIn" data-wow-delay=".5s">
	<div class="container">
		<%
			if (request.getAttribute("result")!=null){
		%>
		<div class="alert alert-success" role="alert">
			<strong>Well done!</strong> Your message sent!
		</div>
		<%
			}
			if (request.getAttribute("error")!=null){
		%>
		<div class="alert alert-danger" role="alert">
			<strong>Oh snap!</strong> Your email is wrong!
		</div>
		<%
			}
		%>
		<h3>Mail Us</h3>
		<div class="mail-grids">
			<div class="col-md-8 mail-grid-left animated wow slideInLeft" data-wow-delay=".5s">
				<form>
					<input name="name" type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
					<input name="email" type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input name="subject" type="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}" required="">
					<textarea name="message" type="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
					<input type="submit" value="Submit Now" >
				</form>
			</div>
			<div class="col-md-4 mail-grid-right animated wow slideInRight" data-wow-delay=".5s">
				<div class="mail-grid-right1">
					<img src="img/3.png" alt=" " class="img-responsive" />
					<h4>Phuong Nguyen <span>Manager</span></h4>
					<ul class="phone-mail">
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone: +1234 567 893</li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="mailto:info@example.com">thuyphuong261299@gmail.com</a></li>
					</ul>
					<ul class="social-icons">
						<li><a href="#" class="facebook"></a></li>
						<li><a href="#" class="twitter"></a></li>
						<li><a href="#" class="g"></a></li>
						<li><a href="#" class="instagram"></a></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<iframe class="animated wow slideInLeft" data-wow-delay=".5s" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3098.7638135888296!2d-77.47669308468912!3d39.04350424592369!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b63eb3bc8da92b%3A0x78c8e09ab1cabc90!2sShopping+Plaza%2C+Ashburn%2C+VA+20147%2C+USA!5e0!3m2!1sen!2sin!4v1457602090579" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
</div>
<!-- //mail -->
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>