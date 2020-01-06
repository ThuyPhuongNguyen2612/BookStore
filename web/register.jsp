<!DOCTYPE html>
<html>
<head>
    <title>Best Store</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
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
    <script src="js/checkForm.js"></script>
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
            <li class="active">Register Page</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- register -->
<div class="register">
    <div class="container">
        <%
            if (request.getAttribute("error")!=null){
        %>

        <%=request.getAttribute("error")%>
        <%
            }
        %>
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
        <div class="login-form-grids">
            <h5 class="animated wow slideInUp" data-wow-delay=".5s">profile information</h5>
            <form id="register-form" class="animated wow slideInUp" data-wow-delay=".5s" method="post">
                <input id="email" name="email" type="email" placeholder="Email Address *" required=>
                <input id="pass" name="pass" type="password" placeholder="Password *" required>
                <input id="retypePass" name="retypePass" type="password" placeholder="Password Confirmation *" required>
                <div class="register-check-box">
                    <div class="check">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>I accept the terms and
                            conditions</label>
                    </div>
                </div>
                <input type="submit" value="Register">
            </form>
            <script>
                $(document).ready(function () {

                    $("#register-form").validate({
                        rules: {
                            email: {
                                required: true,
                            },
                            pass: {
                                required: true,
                                minlength: 1,
                            },
                            retypePass: {
                                required: true,
                                equalTo: "#pass"
                            }
                        },
                        messages: {
                            email: {
                                required: "Please enter your phone number",
                                // equalTo: "Your phone number fotmat is wrong"
                            },
                            pass: {
                                required: "Please enter your phone number",
                                minlength: "Phone number is at least 10 characters",
                                // equalTo: "Your phone number fotmat is wrong"
                            },
                            retypePass: {
                                required: "Please enter your phone number",
                                // minlength: "Phone number is at least 10 characters",
                                // equalTo: "Your phone number fotmat is wrong"
                            }
                        }
                    })

                })
            </script>
            <h6 class="animated wow slideInUp" data-wow-delay=".5s">Or</h6>
            <div class="animated wow slideInUp" data-wow-delay=".5s" style="padding-left: 5%">
                <img src="img/google_signin_dark.png" width="40%"/>
                <img src="img/facebook_signin_dark.png" width="55%"/>
            </div>
        </div>
        <div class="register-home animated wow slideInUp" data-wow-delay=".5s">
            <a href="index.jsp">Home</a>
        </div>
    </div>
</div>
<!-- //register -->
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>