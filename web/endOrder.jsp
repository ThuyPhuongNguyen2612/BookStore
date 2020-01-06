<!DOCTYPE html>
<html lang="en">
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
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <link rel="stylesheet" href="../FontAwesome/css/all.css">
    <link rel="stylesheet" href="css/order.css">
    <!-- //animation-effect -->
</head>
<body>
<!-- header -->
<jsp:include page="/header"></jsp:include>
<!-- //header -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Order</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<div class="order">
    <div class="container">
        <div class="order-progress">
            <div class="col-xs-4 col-md-4 progress-step complete">
                <div class="progress-stepnum"><span>Login</span></div>
                <div class="progress-line">
                    <div class="progress-complete"></div>
                </div>
                <div class="progress-dot">1</div>
            </div>
            <div class="col-xs-4 col-md-4 progress-step complete">
                <div class="progress-stepnum"><span>Address</span></div>
                <div class="progress-line">
                    <div class="progress-complete"></div>
                </div>
                <span class="progress-dot">2</span>
            </div>
            <div class="col-xs-4 col-md-4 progress-step complete">
                <div class="progress-stepnum"><span>Payment</span></div>
                <div class="progress-line">
                    <div class="progress-complete"></div>
                </div>
                <span class="progress-dot">3</span>
            </div>
        </div>
        <div class="check-box">
            <img src="img/check-box.png" height="auto" width="100%">
        </div>
        <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
            <a href="index.jsp"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
        </div>
    </div>
</div>
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>