<!DOCTYPE html>
<html lang="en">
<head>
    <title>Best Store</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
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
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/index.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <!-- timer -->
    <link rel="stylesheet" href="css/jquery.countdown.css"/>
    <!-- //timer -->
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
<jsp:include page="/header"></jsp:include>
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">New password</li>
        </ol>
    </div>
</div>
<div class="container">
    <div class="row" style="padding-top:50px;">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-body" style="border: 1px solid black">
                    <div class="text-center">
                        <h3 class="text-center">Enter your password bellow</h3>
                            <form id="register-form" role="form" autocomplete="off" class="form" method="post">
                                <div class="form-group">
                                    <input name="userName" type="hidden" class="hide" id="token"
                                           value="<%=request.getAttribute("userName")%>">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" style="margin-top: 10px">Code<span class="ip1" style="color: red">*</span></label>
                                        <div class="col-sm-9" style="margin-top: 10px">
                                            <input name="code" type="text" placeholder="Code" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" style="margin-top: 10px">New password<span class="ip1" style="color: red">*</span></label>
                                        <div class="col-sm-9" style="margin-top: 10px">
                                            <input name="pass" type="password" placeholder="New password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" style="margin-top: 10px">Retype password<span class="ip1" style="color: red">*</span></label>
                                        <div class="col-sm-9" style="margin-top: 10px">
                                            <input name="retypePass" type="password" placeholder="Confirm password"
                                                   class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Save"
                                           type="submit">
                                </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/footer"></jsp:include>
</body>
</html>
