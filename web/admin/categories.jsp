<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.nlu.fit.model.Category" %>
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
    <section id="main-content">
        <section class="wrapper">
            <%
                if (request.getParameter("notify")!=null){
            %>
            <div class="alert alert-success" role="alert">
                <strong>Success!</strong>
            </div>
            <%
                }
            %>
            <div class="table-agile-info col-xs-12 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Categories
                    </div>
                    <div>
                        <div class="row w3-res-tb">
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <input type="text" class="input-sm form-control" placeholder="Search">
                                    <span class="input-group-btn"><button class="btn btn-sm btn-default" type="button"><i class="fa fa-search"></i></button></span>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <a href="/admin/addCategory"><button class="btn btn-sm btn-default" style="float: right">Add<i class="fa fa-plus"></i></button></a>
                            </div>
                        </div>
                        <table class="col-xs-12 col-lg-12">
                            <tr>
                                <td>#</td>
                                <td>Name</td>
                                <td>Show</td>
                                <td>Action</td>
                            </tr>
                            <%
                                ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");
                                for (Category category: categories) {
                            %>
                            <tr class="rem<%=category.getCategoryID()%>">
                                <td><%=category.getCategoryID()%></td>
                                <td><%=category.getName()%></td>
                                <td><input type="checkbox" disabled <%=category.getActive()==1?"checked":""%>></td>
                                <td><span>
                                    <a href="/admin/editCategory?categoryID=<%=category.getCategoryID()%>"><i class="fa fa-edit"></i></a>
                                    <a href="" class="close<%=category.getCategoryID()%>"><i class="fa fa-times-circle"></i></a>
                                </span></td>
                            </tr>
                            <script>$(document).ready(function (c) {
                                $('.close<%=category.getCategoryID()%>').on('click', function (c) {
                                        removeCategory(<%=category.getCategoryID()%>);
                                    <%--$('.rem<%=category.getCategoryID()%>').fadeOut('slow', function (c) {--%>
                                    // });
                                });
                            });
                            </script>
                            <%
                                }
                            %>

                        </table>
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
<script src="js/index.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
