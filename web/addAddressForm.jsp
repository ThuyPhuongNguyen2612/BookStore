<!DOCTYPE html>
<html lang="en">
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
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="../js/jquery.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="../js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="../js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <!-- timer -->
    <link rel="stylesheet" href="../css/jquery.countdown.css"/>
    <!-- //timer -->
    <!-- animation-effect -->
    <link href="../css/animate.min.css" rel="stylesheet">
    <script src="../js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <link rel="stylesheet" href="../FontAwesome/css/all.css">
    <link rel="stylesheet" href="../css/order.css">
    <link rel="stylesheet" href="../css/form.css">
    <!-- //animation-effect -->

</head>
<body>
<!-- header -->
<jsp:include page="/header"></jsp:include>
<!-- //header -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li><a href="/cart">Checkout Page</a></li>
            <li class="active">Address</li>
        </ol>
    </div>
</div>
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
            <div class="col-xs-4 col-md-4 progress-step active">
                <div class="progress-stepnum"><span>Address</span></div>
                <div class="progress-line">
                    <div class="progress-complete"></div>
                </div>
                <span class="progress-dot">2</span>
            </div>
            <div class="col-xs-4 col-md-4 progress-step disabled">
                <div class="progress-stepnum"><span>Payment</span></div>
                <div class="progress-line">
                    <div class="progress-complete"></div>
                </div>
                <span class="progress-dot">3</span>
            </div>
        </div>
        <h3 class="animated wow zoomIn animated" data-wow-delay=".5s"
            style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">2. ADDRESS</h3>
        <div>
            <p>Select an available shipping address below:</p>
            <div class="available-address">
                <p>Name: </p>
                <p>Address: 1234k Avenue, 4th block, New York City</p>
                <p>Country: US</p>
                <p>Phone number: 09563257576</p>
                <br>
                <button class="form-button"><a href="/order/payment">Delivery to this address</a></button>
            </div>
            <p>You want to ship to another address? <a>Add new shipping address</a></p>
            <h3>New address</h3>
            <form class="form">
                <div class="form-group">
                    <label for="name" class="col-md-3 control-label">Name</label>
                    <div class="row col-md-9">
                        <input id="name" name="name" class="col-xs-12 col-md-8 form-control" type="text" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-md-3 control-label">Phone number</label>
                    <div class="row col-md-9">
                        <input id="phone" name="phone" class="col-xs-12 col-md-8 form-control" type="tel" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="city" class="col-md-3 control-label">City</label>
                    <div class="row col-md-9">
                        <input id="city" name="city" class="col-xs-12 col-md-8 form-control" type="tel" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="district" class="col-md-3 control-label">District</label>
                    <div class="row col-md-9">
                        <input id="district" name="district" class="col-xs-12 col-md-8 form-control" type="tel" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="ward" class="col-md-3 control-label">Ward</label>
                    <div class="row col-md-9">
                        <input id="ward" name="ward" class="col-xs-12 col-md-8 form-control" type="tel" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-md-3 control-label">Address</label>
                    <div class="row col-md-9">
                        <textarea id="address" name="address" class="form-control m-bot15"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label"></label>
                    <div class="row col-md-9">
                        <button class="form-button"><a href="/order/payment">Delivery to this address</a></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-12 checkout-basket" style="margin-top: 2em ; margin-bottom: 2em">
            <a href="/cart">Back to cart
                <span class="glyphicon glyphicon-menu-right" style="font-size: 19px"></span>
            </a>
        </div>
    </div>
</div>
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>