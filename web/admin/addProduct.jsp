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
    <!-- //font-awesome icons -->
    <script src="js/jquery2.0.3.min.js"></script>
    <link rel="stylesheet" href="css/form.css">
</head>
<body>
<section id="container">
    <!--header start-->
    <jsp:include page="include/header.jsp"></jsp:include>
    <!--header end-->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse">
            <!-- sidebar menu start-->
            <div class="leftside-navigation">
                <ul class="sidebar-menu" id="nav-accordion">
                    <li>
                        <a href="/admin">
                            <i class="fa fa-home"></i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="/admin/orders">
                            <i class="fa fa-shopping-cart"></i>
                            <span>Order</span>
                        </a>
                    </li>
                    <li>
                        <a class="active" href="/admin/products">
                            <i class="fa fa-product-hunt"></i>
                            <span>Product</span>
                        </a>
                    </li>
                    <li>
                        <a href="/admin/categories">
                            <i class="fa fa-tags"></i>
                            <span>Categories</span>
                        </a>
                    </li>
                    <li>
                        <a href="/admin/users">
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
                            <li><a href="/admin/message">Mail</a></li>
                            <li><a href="/admin/message/replyMail">Compose Mail</a></li>
                            <li><a href="/admin/comments">Comment</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/">
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
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="form-w3layouts col-xs-12 col-md-12">
                <section class="panel">
                    <header class="panel-heading">
                        Add product form
                    </header>
                    <div class="panel-body">
                        <form class="form-horizontal bucket-form" method="post">
                            <div class="form-group">
                                <label for="image" class="col-lg-2 col-sm-2 control-label">Image</label>
                                <div class="col-sm-10">
                                    <input id="image" type="file" class="form-control">
                                    <button class="right img-bt"><i class="fa fa-plus"></i></button>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="category" class="col-lg-2 col-sm-2 control-label">Category</label>
                                <div class="col-sm-10">
                                    <select id="category" class="form-control m-bot15">
                                        <option>Romance</option>
                                        <option>Horror</option>
                                        <option>Comedy</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="book-name" class="col-lg-2 col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input id="book-name" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="book-author" class="col-lg-2 col-sm-2 control-label">Author</label>
                                <div class="col-sm-10">
                                    <input id="book-author" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-lg-2 col-sm-2 control-label">Price</label>
                                <div class="col-sm-10">
                                    <input id="price" type="text" class="form-control" placeholder="$200">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="discount" class="col-lg-2 col-sm-2 control-label">Discount</label>
                                <div class="col-sm-10">
                                    <select id="discount" class="form-control m-bot15">
                                        <option>MaKM1 - 20%</option>
                                        <option>MaKM2 - 10%</option>
                                        <option>MaKM3 - 50%</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-lg-2 col-sm-2 control-label">Description</label>
                                <div class="col-sm-10">
                                    <textarea id="description" class="form-control" type=""></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="detail" class="col-lg-2 col-sm-2 control-label">Detail</label>
                                <div class="col-sm-10">
                                    <textarea id="detail" class="form-control" type=""></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="path" class="col-lg-2 col-sm-2 control-label">Path</label>
                                <div class="col-sm-10">
                                    <input id="path" type="text" class="form-control" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="amount" class="col-lg-2 col-sm-2 control-label">Amount</label>
                                <div class="col-sm-10">
                                    <input id="amount" type="number" min="1" class="form-control" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 col-sm-2 control-label">Action</label>
                                <div class="col-sm-10">
                                    <input type="checkbox"> New <br>
                                    <input type="checkbox"> Highlight <br>
                                    <input type="checkbox"> Show <br>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button type="button" class="btn btn-default">Cancel</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </section>

            </div>
        </section>
    </section>
    <!--main content end-->

</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- calendar -->
<script type="text/javascript" src="js/monthly.js"></script>
<script type="text/javascript">
    $(window).load(function () {

        $('#mycalendar').monthly({
            mode: 'event',

        });

        $('#mycalendar2').monthly({
            mode: 'picker',
            target: '#mytarget',
            setWidth: '250px',
            startHidden: true,
            showTrigger: '#mytarget',
            stylePast: true,
            disablePast: true
        });

        switch (window.location.protocol) {
            case 'http:':
            case 'https:':
                // running on a server, should be good.
                break;
            case 'file:':
                alert('Just a heads-up, events will not work when run locally.');
        }

    });
</script>
<!-- //calendar -->
</body>
</html>
