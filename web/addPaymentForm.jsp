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
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <link rel="stylesheet" href="../FontAwesome/css/all.css">
    <link rel="stylesheet" href="css/order.css">
    <link rel="stylesheet" href="css/form.css">
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
            <li><a href="cart.jsp">Checkout Page</a></li>
            <li class="active">Payment</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- checkout -->
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
            <div class="col-xs-4 col-md-4 progress-step active">
                <div class="progress-stepnum"><span>Payment</span></div>
                <div class="progress-line">
                    <div class="progress-complete"></div>
                </div>
                <span class="progress-dot">3</span>
            </div>
        </div>
        <div>
            <h3>3. PAYMENT</h3>
        </div>
        <div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#cash" id="cash-tab" role="tab" data-toggle="tab"
                                                              aria-controls="cash" aria-expanded="true">Cash on
                        delivery</a></li>
                    <li role="presentation"><a href="#credit" role="tab" id="credit-tab" data-toggle="tab"
                                               aria-controls="credit">Credit/Debit</a></li>
                    <li role="presentation"><a href="#paypal" role="tab" id="paypal-tab" data-toggle="tab"
                                               aria-controls="paypal">Paypal account</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="cash"
                         aria-labelledby="cash-tab" style="height: 300px">
                        <input type="checkbox"> We also accept Credit/Debit card on delivery. Please check with the
                        agent.
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="credit" aria-labelledby="credit-tab">
                        <div class="payment-form-grids">
                            <form class="form" action="#">
                                <div class="form-group">
                                    <label for="name" class="col-sm-3 control-label">Name on Card</label>
                                    <div class="col-sm-9">
                                        <input id="name" class="row col-xs-12 col-md-8 form-control" type="text" value="" placeholder="John Smith">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Card number</label>
                                    <div class="row col-sm-9">
                                        <input class="security-code form-control"
                                               inputmode="numeric" type="text" name="security-code"
                                               placeholder="123">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CVV</label>
                                    <div class="col-sm-9">
                                        <input id="email" class="row col-xs-12 col-md-8 form-control" type="ema cv il" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Expiration Date</label>
                                    <div class="row col-sm-9">
                                        <input class="expiration-month-and-year form-control" type="text"
                                               name="expiration-month-and-year" placeholder="MM / YY">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="row col-sm-9">
                                        <input type="submit" value="Make a payment" class="form-button">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="paypal"
                         aria-labelledby="paypal-tab">
                        <div class="payment-form-grids">
                            <div class="col-md-4 pay-forms">
                                <img class="pp-img" src="img/paypal.png" alt="Image Alternative text"
                                     title="Image Title">
                            </div>
                            <div class="col-md-8 number-paymk">
                                <form action="#" method="post" class="creditly-card-form-2 shopf-sear-headinfo_form">
                                    <section class="creditly-wrapper payf_wrapper">
                                        <div class="credit-card-wrapper">
                                            <div class="first-row form-group">
                                                <div class="controls">
                                                    <label class="control-label">Card Holder </label>
                                                    <input class="billing-address-name form-control" type="text"
                                                           name="name" placeholder="John Smith">
                                                </div>
                                                <div class="paymntf_card_number_grids my-2">
                                                    <div class="fpay_card_number_grid_left">
                                                        <div class="controls">
                                                            <label class="control-label">Card Number</label>
                                                            <input class="number credit-card-number-2 form-control"
                                                                   type="text" name="number" inputmode="numeric"
                                                                   autocomplete="cc-number" autocompletetype="cc-number"
                                                                   x-autocompletetype="cc-number"
                                                                   placeholder="1234 1234 1234 1234">
                                                        </div>
                                                    </div>
                                                    <div class="fpay_card_number_grid_right mt-2">
                                                        <div class="controls">
                                                            <label class="control-label">CVV</label>
                                                            <input class="security-code-2 form-control" Â·=""
                                                                   inputmode="numeric" type="text" name="security-code"
                                                                   placeholder="•••">
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="controls">
                                                    <label class="control-label">Valid Thru</label>
                                                    <input class="expiration-month-and-year-2 form-control" type="text"
                                                           name="expiration-month-and-year" placeholder="MM / YY">
                                                </div>
                                            </div>
                                            <input class="submit form-button" type="submit" value="Proceed Payment">
                                        </div>
                                    </section>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 checkout-basket" style="margin-top: 2em ; margin-bottom: 2em">
            <a href="cart.jsp">Back to cart
                <span class="glyphicon glyphicon-menu-right" style="font-size: 19px"></span>
            </a>
        </div>
    </div>
</div>
<!-- //checkout -->
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>