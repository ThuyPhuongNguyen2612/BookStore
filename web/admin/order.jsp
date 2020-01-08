<!DOCTYPE html>
<head>
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css/font.css" type="text/css"/>
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/morris.css" type="text/css"/>
    <!-- calendar -->
    <link rel="stylesheet" href="css/monthly.css">
    <!-- //calendar -->
    <!-- //font-awesome icons -->
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <link rel="stylesheet" href="css/table.css">
</head>
<body>
<section id="container">
    <!--header start-->
    <header class="header fixed-top clearfix">
        <!--logo start-->
        <div class="brand">
            <a href="index.jsp" class="logo">
                ADMIN
            </a>
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars"></div>
            </div>
        </div>
        <!--logo end-->
        <div class="nav notify-row" id="top_menu">
            <!--  notification start -->
            <ul class="nav top-menu">
                <!-- settings start -->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="fa fa-tasks"></i>
                        <span class="badge bg-success">8</span>
                    </a>
                    <ul class="dropdown-menu extended tasks-bar">
                        <li>
                            <p class="">You have 8 pending tasks</p>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info clearfix">
                                    <div class="desc pull-left">
                                        <h5>Target Sell</h5>
                                        <p>25% , Deadline 12 June’13</p>
                                    </div>
                                    <span class="notification-pie-chart pull-right" data-percent="45">
                            <span class="percent"></span>
                            </span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info clearfix">
                                    <div class="desc pull-left">
                                        <h5>Product Delivery</h5>
                                        <p>45% , Deadline 12 June’13</p>
                                    </div>
                                    <span class="notification-pie-chart pull-right" data-percent="78">
                            <span class="percent"></span>
                            </span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info clearfix">
                                    <div class="desc pull-left">
                                        <h5>Payment collection</h5>
                                        <p>87% , Deadline 12 June’13</p>
                                    </div>
                                    <span class="notification-pie-chart pull-right" data-percent="60">
                            <span class="percent"></span>
                            </span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info clearfix">
                                    <div class="desc pull-left">
                                        <h5>Target Sell</h5>
                                        <p>33% , Deadline 12 June’13</p>
                                    </div>
                                    <span class="notification-pie-chart pull-right" data-percent="90">
                            <span class="percent"></span>
                            </span>
                                </div>
                            </a>
                        </li>

                        <li class="external">
                            <a href="#">See All Tasks</a>
                        </li>
                    </ul>
                </li>
                <!-- settings end -->
                <!-- inbox dropdown start-->
                <li id="header_inbox_bar" class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge bg-important">4</span>
                    </a>
                    <ul class="dropdown-menu extended inbox">
                        <li>
                            <p class="red">You have 4 Mails</p>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="images/3.png"></span>
                                <span class="subject">
                                <span class="from">Jonathan Smith</span>
                                <span class="time">Just now</span>
                                </span>
                                <span class="message">
                                    Hello, this is an example msg.
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="images/1.png"></span>
                                <span class="subject">
                                <span class="from">Jane Doe</span>
                                <span class="time">2 min ago</span>
                                </span>
                                <span class="message">
                                    Nice admin template
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="images/3.png"></span>
                                <span class="subject">
                                <span class="from">Tasi sam</span>
                                <span class="time">2 days ago</span>
                                </span>
                                <span class="message">
                                    This is an example msg.
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="img/2.png"></span>
                                <span class="subject">
                                <span class="from">Mr. Perfect</span>
                                <span class="time">2 hour ago</span>
                                </span>
                                <span class="message">
                                    Hi there, its a test
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">See all messages</a>
                        </li>
                    </ul>
                </li>
                <!-- inbox dropdown end -->
                <!-- notification dropdown start-->
                <li id="header_notification_bar" class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                        <i class="fa fa-bell-o"></i>
                        <span class="badge bg-warning">3</span>
                    </a>
                    <ul class="dropdown-menu extended notification">
                        <li>
                            <p>Notifications</p>
                        </li>
                        <li>
                            <div class="alert alert-info clearfix">
                                <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                                <div class="noti-info">
                                    <a href="#"> Server #1 overloaded.</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="alert alert-danger clearfix">
                                <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                                <div class="noti-info">
                                    <a href="#"> Server #2 overloaded.</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="alert alert-success clearfix">
                                <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                                <div class="noti-info">
                                    <a href="#"> Server #3 overloaded.</a>
                                </div>
                            </div>
                        </li>

                    </ul>
                </li>
                <!-- notification dropdown end -->
            </ul>
            <!--  notification end -->
        </div>
        <div class="top-nav clearfix">
            <!--search & user info start-->
            <ul class="nav pull-right top-menu">
                <li>
                    <input type="text" class="form-control search" placeholder=" Search">
                </li>
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" src="img/2.png">
                        <span class="username">John Doe</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <li><a href="profile.html"><i class=" fa fa-suitcase"></i>Profile</a></li>
                        <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                        <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
                    </ul>
                </li>
                <!-- user login dropdown end -->

            </ul>
            <!--search & user info end-->
        </div>
    </header>
    <!--header end-->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse">
            <!-- sidebar menu start-->
            <div class="leftside-navigation">
                <ul class="sidebar-menu" id="nav-accordion">
                    <li>
                        <a href="index.jsp">
                            <i class="fa fa-home"></i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li>
                        <a class="active" href="order.jsp">
                            <i class="fa fa-shopping-cart"></i>
                            <span>Order</span>
                        </a>
                    </li>
                    <li>
                        <a href="product.jsp">
                            <i class="fa fa-product-hunt"></i>
                            <span>Product</span>
                        </a>
                    </li>
                    <li>
                        <a href="categories.html">
                            <i class="fa fa-tags"></i>
                            <span>Categories</span>
                        </a>
                    </li>
                    <li>
                        <a href="users.jsp">
                            <i class="fa fa-users"></i>
                            <span>Users</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;">
                            <i class="fa fa-backward"></i>
                            <span>Feedback</span>
                        </a>
                        <ul class="sub">
                            <li><a href="mail.jsp">Mail</a></li>
                            <li><a href="mail_compose.jsp">Compose Mail</a></li>
                            <li><a href="comment.jsp">Comment</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="..\user\index.html">
                            <i class="fa fa-user"></i>
                            <span>User page</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->
    <section id="main-content">
        <section class="wrapper">
            <div class="table-agile-info col-xs-12 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Orders
                    </div>
                    <div>
                        <div class="row w3-res-tb">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <input type="text" class="input-sm form-control" placeholder="Search">
                                    <span class="input-group-btn"><button class="btn btn-sm btn-default"
                                                                          type="button"><i
                                            class="fa fa-search"></i></button></span>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <select class="input-sm form-control w-sm inline v-middle">
                                    <option value="0">See all</option>
                                    <option value="1">Today</option>
                                    <option value="2">This month</option>
                                </select>
                            </div>
                        </div>
                        <table class="col-xs-12 col-lg-12">
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>Order ID</td>
                                <td>Customer</td>
                                <td>Deliver ID</td>
                                <td>Date</td>
                                <td>Payment</td>
                                <td>Total price</td>
                                <td>Status</td>
                                <td>Detail</td>
                                <td>Action</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="order_details.html"><i class="fa fa-eye"></i></a></td>
                                <td><span>
                                    <i class="icon-edit"></i>
                                    <i class=" fa fa-times-circle"></i>
                                </span></td>
                            </tr>

                        </table>
                        <footer class="panel-footer col-xs-12 col-md-12">
                            <div class="row">
                                <div class="col-sm-5">
                                </div>
                                <div class="col-sm-7 text-right text-center-xs">
                                    <ul class="pagination pagination-sm m-t-none m-b-none">
                                        <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                                        <li><a href="">1</a></li>
                                        <li><a href="">2</a></li>
                                        <li><a href="">3</a></li>
                                        <li><a href="">4</a></li>
                                        <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </footer>
                    </div>
                </div>
            </div>
        </section>
    </section>
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
