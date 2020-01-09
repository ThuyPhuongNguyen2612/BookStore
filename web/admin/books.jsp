<%@ page import="vn.edu.nlu.fit.model.Book" %>
<%@ page import="java.util.List" %>
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
    <jsp:include page="include/header.jsp"></jsp:include>
    <!--header end-->
    <!--sidebar start-->
    <jsp:include page="include/sideBar.jsp"></jsp:include>
    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="table-agile-info col-xs-12 col-md-12">
                <div class="panel panel-default">
                    <%
                        if (request.getParameter("notify") != null) {
                    %>
                    <div class="alert alert-success" role="alert">
                        <strong>Success!</strong>
                    </div>
                    <%
                        }
                    %>
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
                                    <span class="input-group-btn"><button class="btn btn-sm btn-default"
                                                                          type="button"><i
                                            class="fa fa-search"></i></button></span>
                                </div>
                            </div>
                            <div class="col-sm-4 m-b-xs">
                                <select class="input-sm form-control w-sm inline v-middle">
                                    <option value="0">See all product</option>
                                    <option value="1">New</option>
                                    <option value="2">Highlight</option>
                                </select>
                                <a href="/admin/addBook">
                                    <button class="btn btn-sm btn-default" style="float: right">Add<i
                                            class="fa fa-plus"></i></button>
                                </a>
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
                                for (Book book : books) {
                            %>
                            <tr>
                                <td><%=book.getBookID()%>
                                </td>
                                <td><%=book.getCategoryID()%></td>
                                <td><%=book.getTitle()%>
                                </td>
                                <td><img src="../<%=book.getImage()%>"/></td>
                                <td><%=book.getQuantity()%></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox"></td>
                                <td><input type="checkbox" checked></td>
                                <td><span><a href="#"><i class="fa fa-edit"></i></a>
                                    <a href="" class="close<%=book.getBookID()%>"><i
                                        class="fa fa-times-circle"></i></a></span></td>
                            </tr>
                            <script>$(document).ready(function (c) {
                                $('.close<%=book.getBookID()%>').on('click', function (c) {
                                    removeBook(<%=book.getBookID()%>);
                                });
                            });
                            </script>
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
                                        <%
                                            int numberOfPages = (int) request.getAttribute("numberOfPages");
                                            for (int i = 1; i < numberOfPages + 1; i++) {
                                        %>
                                        <li><a href="/admin/books?page=<%=i%>"><%=i%></a></li>
                                        <%
                                            }
                                        %>
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
