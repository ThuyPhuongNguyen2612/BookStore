<!DOCTYPE html>
<html>
<head>
    <title>Account</title>
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
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <link rel="stylesheet" href="../FontAwesome/css/all.css">
    <link rel="stylesheet" href="css/account.css">
    <link rel="stylesheet" href="css/order.css">
</head>
<body>
<!-- header -->
<jsp:include page="/header"></jsp:include>
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Account</li>
        </ol>
    </div>
</div>
<div class="account">
    <div class="container">
        <div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#account" id="account-tab" role="tab"
                                                              data-toggle="tab" aria-controls="account"
                                                              aria-expanded="true">Account</a></li>
                    <li role="presentation"><a href="#myOrder" role="tab" id="myOrder-tab" data-toggle="tab"
                                               aria-controls="myOrder">My order</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="account"
                         aria-labelledby="account-tab">
                        <div class="col-md-4 mail-grid-right animated wow slideInLeft" data-wow-delay=".5s">
                            <div class="mail-grid-right1">
                                <img src="images/3.png" alt=" " class="img-responsive" />
                                <h4>Rita Williumson </h4>
                                <ul class="phone-mail">
                                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone: +1234 567 893</li>
                                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="mailto:info@example.com">info@example.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="user-info-form col-md-8 animated wow slideInRight">
                            <form action="#">
                                <div class="form-group">
                                    <label for="name" class="col-sm-3 control-label">Name</label>
                                    <div class="col-sm-9">
                                        <input id="name" class="row col-xs-12 col-md-8 form-control" type="text" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="col-sm-3 control-label">Phone number</label>
                                    <div class="col-sm-9">
                                        <input id="phone" class="row col-xs-12 col-md-8 form-control" type="tel" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-sm-3 control-label">Email</label>
                                    <div class="col-sm-9">
                                        <input id="email" class="row col-xs-12 col-md-8 form-control" type="email" value="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Gentle</label>
                                    <div class="col-sm-9">
                                        <input name="gentle" class="row col-xs-3 col-md-2" type="radio" value="">
                                        <p class="row col-xs-3 col-md-2">Male</p>
                                        <input name="gentle" class="row col-xs-3 col-md-2" type="radio" value="">
                                        <p class="row col-xs-3 col-md-2">Female</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Birthday</label>
                                    <div id="dob" class="row col-sm-9">
                                        <select name="day" class="form-control col-xs-3">
                                            <option value="0">Day</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                        <select name="month" class="form-control col-xs-3">
                                            <option value="0">Month</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                        <select name="year" class="form-control col-xs-3">
                                            <option value="0">Year</option>
                                            <option value="1">1900</option>
                                            <option value="2">1999</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Address</label>
                                    <div class="col-sm-9">
                                        <textarea class="row col-xs-12 col-md-8 form-control" type="text" value=""></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Password</label>
                                    <div class="col-sm-9">
                                        <div class="form-group" style="float: right">
                                            <a id="change-pass-bt"><p class="col-sm-12 control-label">Change password?</p></a>
                                        </div>
                                    </div>
                                </div>
                                <div id="change-pass" class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-8">
                                        <div class="row form-group">
                                            <label class="col-sm-3 control-label">Current</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-sm-3 control-label">New</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-sm-3 control-label">Retype new</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-sm-3 control-label"></label>
                                            <div class="col-sm-8">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                                <button type="submit" class="btn btn-default">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                    $("#change-pass").hide();
                                    $("#change-pass-bt").onclick(function () {
                                        $("#change-pass").show();
                                    });
                                </script>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="row col-sm-9">
                                        <input type="submit" class="btn form-button" value="Update">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="myOrder"
                         aria-labelledby="myOrder-tab">
                        <div class="tablepane">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Date</th>
                                    <th>Detail</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>14-06-2017, 14:42:28</td>
                                    <td><i class="fa fa-eye"></i></td>
                                    <td>complete</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>20-08-2019,12:15:06</td>
                                    <td><i class="fa fa-eye"></i></td>
                                    <td>complete</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>30-09-2019, 7:30:07</td>
                                    <td><i class="fa fa-eye"></i></td>
                                    <td>complete</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>
