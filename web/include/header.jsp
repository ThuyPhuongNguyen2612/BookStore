<%@ page import="vn.edu.nlu.fit.model.Book" %>
<%@ page import="vn.edu.nlu.fit.model.Category" %>
<%@ page import="vn.edu.nlu.fit.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%
    String url = request.getRequestURL().toString();
    String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
%>
<div class="header">
    <div class="container">
        <div class="header-grid">
            <div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <ul>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">beststore@gmail.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 892</li>
                    <li><a><i class="fab fa-facebook-f fa-lg"></i></a></li>
                    <li><a><i class="fab fa-twitter fa-lg"></i></a></li>
                    <li><a><i class="fab fa-google-plus fa-lg"></i></a></li>
                    <li><a><i class="fab fa-instagram fa-lg"></i></a></li>
                </ul>
            </div>
            <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <ul class="login-register">
                    <%
                        if (session.getAttribute("user") != null) {
                            User user = (User) session.getAttribute("user");
                    %>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" src="<%=baseURL%>img/avatar.png">
                            <span class="username"><%=user.getName()%></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <li><a href="/account"><i class=" fa fa-suitcase"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                            <%
                                if (user.getGroup() > 1) {
                            %>
                            <li><a href="/admin"><i class="fa fa-cog"></i> Admin page</a></li>
                            <%
                                }
                            %>
                            <li><a href="/logout"><i class="fa fa-key"></i> Log Out</a></li>
                        </ul>
                    </li>
                    <%
                    } else {
                    %>
                    <li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>
                        <a href="/login">Login</a>
                    </li>
                    <li><i class="glyphicon glyphicon-book" aria-hidden="true"></i>
                        <a href="/register">Register</a>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="logo-nav">
            <div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
                <h1><a href="/">Best Store <span>Shop anywhere</span></a></h1>
            </div>
            <div class="logo-nav-left1">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse"
                                data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="/" class="act">Home</a></li>
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories <b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <ul class="multi-column-dropdown">
                                                <h6>Books</h6>
                                                <%
                                                    List<Category> categoryList = (List<Category>) request.getAttribute("listCategories");
                                                    for (Category category : categoryList) {
                                                %>
                                                <li>
                                                    <a href="products?type=<%=category.getCategoryID()%>&page=1"><%=category.getName()%>
                                                    </a></li>
                                                <%
                                                    }
                                                %>
                                            </ul>
                                        </div>
                                        <div class="col-sm-6">
                                            <ul class="multi-column-dropdown">
                                                <h6>Author</h6>
                                                <li><a href="/products"></a></li>
                                                <li><a href="/products"></a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li><a href="/mail">Mail Us</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="logo-nav-right">
                <div class="search-box">
                    <div id="sb-search" class="sb-search">
                        <form action="/bookDetail">
                            <input class="sb-search-input" placeholder="Enter your search term..." type="search"
                                   id="searchBook" list="bookTitles">
                            <input id="bookID" name="bookID" type="hidden">
                            <input class="sb-search-submit" type="submit" value="">
                            <span class="sb-icon-search"> </span>
                        </form>
                        <datalist id="bookTitles">
                            <%
                                List<Book> allBooks = (List<Book>) request.getAttribute("allBooks");
                                for (Book book : allBooks) {
                            %>
                            <option bookId="<%=book.getBookID()%>" value="<%=book.getTitle()%>" />
                            <%
                                }
                            %>

                        </datalist>
                    </div>
                </div>
                <div class="header-right">
                    <div class="cart box_1">
                        <a href="/cart">
                            <i class="fa fa-shopping-cart fa-lg"></i>
                        </a>
                        <%
                            int amount = (int) request.getAttribute("amount");
                            String amountAsString = "";
                            if (amount != 0) {
                                amountAsString = amount + "";
                            }
                        %>
                        <span id="cartSize" class="badge bg-warning"><%=amountAsString%></span>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- search-scripts -->
                <script src="<%=baseURL%>js/classie.js"></script>
                <script src="<%=baseURL%>js/uisearch.js"></script>
                <script>
                    new UISearch(document.getElementById('sb-search'));
                    $(document).on('change', 'input#searchBook', function(){
                        var options = $('datalist#bookTitles')[0].options;
                        var val = $(this).val();
                        for (var i=0;i<options.length;i++){
                            if (options[i].value === val) {
                               var bookId = options[i].getAttribute("bookId");
                               $("input#bookID").val(bookId);
                                break;
                            }
                        }
                    });
                </script>
                <!-- //search-scripts -->
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
