<%@ page import="vn.edu.nlu.fit.model.Book" %>
<%@ page import="vn.edu.nlu.fit.model.Comment" %>
<%@ page import="vn.edu.nlu.fit.model.User" %>
<%@ page import="java.util.List" %>
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
    <script src="js/index.js"></script>
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
            <li class="active">Book details</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- single -->
<%
    Book book = (Book) request.getAttribute("book");
%>
<div class="single">
    <div class="container">
        <div class="col-md-9 single-right">
            <div class="col-md-5 single-right-left animated wow slideInUp" data-wow-delay=".5s">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="images/si.jpg">
                            <div class="thumb-image"><img src="<%=book.getImage()%>" data-imagezoom="true"
                                                          class="img-responsive"></div>
                        </li>
                    </ul>
                </div>
                <!-- flixslider -->
                <script defer src="js/jquery.flexslider.js"></script>
                <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
                <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function () {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                </script>
                <!-- flixslider -->
            </div>
            <div class="col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s">
                <h3>Men's Solid Casual Shirt</h3>
                <h4><span class="item_price">$<%=book.getPrice()%></span></h4>
                <div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked>
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
                </div>
                <div class="description">
                    <h5><i>Description</i></h5>
                    <p><%=book.getDescription()%>
                    </p>
                </div>
                <div class="occasion-cart">
                    <a onclick="addBookToCart('/',<%=book.getBookID()%>)" class="item_add">add to cart </a>
                </div>
                <div class="social">
                    <div class="social-left">
                        <p>Share On :</p>
                    </div>
                    <div class="social-right">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook"></a></li>
                            <li><a href="#" class="twitter"></a></li>
                            <li><a href="#" class="g"></a></li>
                            <li><a href="#" class="instagram"></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab"
                                                                  data-toggle="tab" aria-controls="home"
                                                                  aria-expanded="true">Description</a></li>
                        <%
                            List<Comment> comments = (List<Comment>) request.getAttribute("comments");
                        %>
                        <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab"
                                                   aria-controls="profile">Reviews(<%=comments.size()%>)</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home"
                             aria-labelledby="home-tab">
                            <h5>Product Brief Description</h5>
                            <p><%=book.getDetail()%>
                            </p>
                        </div>
                        <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile"
                             aria-labelledby="profile-tab">
                            <div class="bootstrap-tab-text-grids">
                                <div id="comments">
                                    <%
                                        for (Comment comment : comments) {
                                    %>
                                    <jsp:include page="comment.jsp">
                                        <jsp:param name="userName" value="<%=comment.getUserName()%>"/>
                                        <jsp:param name="content" value="<%=comment.getContent()%>"/>
                                    </jsp:include>
                                    <%
                                        }
                                    %>
                                </div>
                                <%
                                    if (session.getAttribute("user") != null || true) {
                                        User user = (User) session.getAttribute("user");
                                %>
                                <div class="add-review">
                                    <h4>add a review</h4>
                                    <form method="post" name="commentForm" onSubmit="return addComment()"
                                          onerror="alert('failed to post comment!')">
                                        <textarea name="content" type="text" onfocus="this.value = '';"
                                                  onblur="if (this.value === '') {this.value = 'Message...';}"
                                                  required="">Message...</textarea>
                                        <input name="bookID" type="hidden" value="<%=book.getBookID()%>">
                                        <input name="userName" type="hidden" value="<%=user.getUserName() %>">
                                        <input type="submit" value="Send">
                                    </form>
                                </div>
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 products-left">
            <div class="men-position animated wow slideInUp" data-wow-delay=".5s">
                <a href="single.jsp"><img src="img/Q004.jpg" alt=" " class="img-responsive"/></a>

                <div class="men-position-pos">
                    <h4>Summer collection</h4>
                    <h5><span>55%</span> Flat Discount</h5>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //single -->
<!-- single-related-products -->
<div class="single-related-products">
    <div class="container">
        <h3 class="animated wow slideInUp" data-wow-delay=".5s">Related Books</h3>
        <div class="new-collections-grids">
            <%
                List<Book> randomBooks = (List<Book>) request.getAttribute("randomBooks");
                for (int i = 0; i < 4; i++) {
            %>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="bookDetail?bookID=<%= randomBooks.get(i).getBookID()%>" class="product-image"><img
                                src="<%=randomBooks.get(i).getImage()%>" alt=" "
                                class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="bookDetail?bookID=<%= randomBooks.get(i).getBookID()%>">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4>
                        <a href="bookDetail?bookID=<%= randomBooks.get(i).getBookID()%>"><%=randomBooks.get(i).getTitle()%>
                        </a></h4>
                    <p>By <%=randomBooks.get(i).getAuthor()%>
                    </p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$<%=randomBooks.get(i).getPrice()%>
                        </i> <span class="item_price">$<%=randomBooks.get(i).getPrice()%></span><a
                                onclick="addBookToCart('/',<%=randomBooks.get(i).getBookID()%>)" class="item_add">add to
                            cart </a>
                        </p>
                    </div>
                </div>
            </div>
            <%
                }
            %>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //single-related-products -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>About Us</h3>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse.<span>Excepteur sint occaecat cupidatat
						non proident, sunt in culpa qui officia deserunt mollit.</span></p>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
                <h3>Contact Info</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span>
                    </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">info@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
                <h3>Flickr Posts</h3>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(1).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(2).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(3).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(4).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(5).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(6).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(7).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(8).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(2).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(5).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(1).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.jsp"><img src="img/footer(4).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".8s">
                <h3>Blog Posts</h3>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.jsp"><img src="img/imgfooter%20(1).jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.jsp">culpa qui officia deserunt</a></h4>
                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.jsp"><img src="img/imgfooter(2).jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.jsp">Quis autem vel eum iure</a></h4>
                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
            <h2><a href="index.jsp">Best Store <span>shop anywhere</span></a></h2>
        </div>
    </div>
</div>
<!-- //footer -->
<!-- zooming-effect -->
<script src="js/imagezoom.js"></script>
<!-- //zooming-effect -->
</body>
</html>