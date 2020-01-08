<%@ page import="java.util.List" %>
<%@ page import="vn.edu.nlu.fit.model.Book" %>
<%@ page import="java.util.ArrayList" %>
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
    <link rel="stylesheet" href="admin/css/bootstrap.min.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="admin/css/style.css" rel='stylesheet' type='text/css'/>
    <link href="admin/css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="admin/css/font.css" type="text/css"/>
    <link href="admin/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="admin/css/morris.css" type="text/css"/>
    <!-- calendar -->
    <link rel="stylesheet" href="admin/css/monthly.css">
    <!-- //calendar -->
    <!-- //font-awesome icons -->
    <script src="admin/js/jquery2.0.3.min.js"></script>
    <script src="admin/js/raphael-min.js"></script>
    <script src="admin/js/morris.js"></script>
    <link rel="stylesheet" href="admin/css/table.css">
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
            <div class="table-agile-info col-xs-12 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Books
                    </div>
                    <div>
                        <div class="row w3-res-tb">
                            <div class="col-sm-3 m-b-xs">
                                <select class="input-sm form-control w-sm inline v-middle">
                                    <option value="0">Romance</option>
                                    <option value="1">Comic</option>
                                    <option value="2">Horror</option>
                                    <option value="3">History</option>
                                    <option value="4">Humor and Comedy</option>
                                </select>
                            </div>
                            <div class="col-sm-5">
                                <div class="input-group">
                                    <input type="text" class="input-sm form-control" placeholder="Search">
                                    <span class="input-group-btn"><button class="btn btn-sm btn-default" type="button"><i class="fa fa-search"></i></button></span>
                                </div>
                            </div>
                            <div class="col-sm-4 m-b-xs">
                                <select class="input-sm form-control w-sm inline v-middle">
                                    <option value="0">See all product</option>
                                    <option value="1">New</option>
                                    <option value="2">Highlight</option>
                                </select>
                                <a href="addProduct.jsp"><button class="btn btn-sm btn-default" style="float: right">Add<i class="fa fa-plus"></i></button></a>
                            </div>
                        </div>
                        <table class="col-xs-12 col-md-12">
                            <tr>
                                <td>#</td>
                                <td>Category</td>
                                <td>Name</td>
                                <td>Image</td>
                                <td>Quantity</td>
                                <td>Highlights</td>
                                <td>New</td>
                                <td>Display</td>
                                <td>Active</td>
                            </tr>
                            <%
                                List<Book> books = (List<Book>) request.getAttribute("books");
                                for (Book book:books) {
                            %>
                            <tr>
                                <td><%=book.getBookID()%></td>
                                <td></td>
                                <td><%=book.getTitle()%></td>
                                <td><img src="<%=book.getImage()%>"/></td>
                                <td></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox" checked></td>
                                <td><span><a href="#"><i class="fa fa-edit"></i></a>  <a href="#"><i
                                        class="fa fa-times-circle"></i></a></span></td>
                            </tr>
                            <%
                                }
                            %>
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
</body>
</html>
