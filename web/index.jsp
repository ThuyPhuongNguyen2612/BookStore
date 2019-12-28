<%@ page import="java.util.List" %>
<%@ page import="vn.edu.nlu.fit.model.Category" %>
<%@ page import="vn.edu.nlu.fit.model.Book" %>
<!DOCTYPE html>
<html>
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
    <script src="js/index.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
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
<!-- header -->
<div class="my-slider">
    <div class="slide" style="background-image: url('img/bookcoverssmall2.jpg')">
        <div class="container animated zoomIn">
            <h1>FIND YOUR BOOKS</h1>
            <p>Welcome to your friendly neighborhood library. We have more than 1000 books waiting to be discovered.</p>
        </div>
    </div>
    <div class="slide" style="background-image: url('img/bookstackssmall.jpg')">
        <div class="container animated wow zoomIn">
            <h1>LOTS OF BOOKS</h1>
            <p>Welcome to your friendly neighborhood library. We have more than 1000 books waiting to be discovered.</p>
        </div>
    </div>
    <div class="slide" style="background-image: url('img/bookdisplaysmall.jpg')">

        <div class="container animated zoomIn">
            <h1>LOTS OF STORY</h1>
            <p>Welcome to your friendly neighborhood library. We have more than 1000 books waiting to be discovered.</p>
        </div>
    </div>
    <div class="three_bt">
        <span class="dot active" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("slide");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
</div>
<div class="banner-bottom">
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <div class="grid">
                    <figure class="effect-julia">
                        <img src="img/Q014.jpg" alt=" " class="img-responsive"/>
                        <figcaption>
                            <h3>Best <span>Store</span><i> in online shopping</i></h3>
                            <div>
                                <p>Cupidatat non proident, sunt</p>
                                <p>Officia deserunt mollit anim</p>
                                <p>Laboris nisi ut aliquip consequat</p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="img/Q015.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="banner-bottom-grid-left1-pos">
                        <p>Discount 45%</p>
                    </div>
                </div>
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="img/Q013.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="banner-bottom-grid-left1-position">
                        <div class="banner-bottom-grid-left1-pos1">
                            <p>Latest New Collections</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="img/Q012.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="grid-left-grid1-pos">
                        <p>top and classic designs <span>2016 Collection</span></p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- collections -->
<div class="new-collections">
    <div class="container">
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">NEW BOOKS</h3>
        <div class="new-collections-grids">
            <%
                List<Book> newBooks = (List<Book>) request.getAttribute("newBooks");
                for (int i=0;i<4;i++) {
            %>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="bookDetail?bookID=<%= newBooks.get(i).getBookID()%>" class="product-image"><img src="<%=newBooks.get(i).getImage()%>" alt=" "
                                                                        class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="bookDetail?bookID=<%=newBooks.get(i).getBookID()%>">Quick View</a>
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
                    <h4><a href="bookDetail?bookID=<%= newBooks.get(i).getBookID()%>"><%=newBooks.get(i).getTitle()%></a></h4>
                    <p>By <%=newBooks.get(i).getAuthor()%></p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$<%=newBooks.get(i).getPrice()%></i> <span class="item_price">$<%=newBooks.get(i).getPrice()%></span><a onclick="addBookToCart('${requestScope['javax.servlet.forward.request_uri']}',<%=newBooks.get(i).getBookID()%>)"class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>
            </div>
            <%
                }
            %>
            <div class="clearfix"></div>
        </div>
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">BEST SELLER</h3>
        <div class="new-collections-grids">
            <%
                List<Book> highlighedBooks = (List<Book>) request.getAttribute("highlighedBooks");
                for (int i=0;i<4;i++) {
            %>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="bookDetail?bookID=<%= highlighedBooks.get(i).getBookID()%>" class="product-image"><img src="<%=highlighedBooks.get(i).getImage()%>" alt=" "
                                                                        class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="bookDetail?bookID=<%= highlighedBooks.get(i).getBookID()%>">Quick View</a>
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
                    <h4><a href="bookDetail?bookID=<%= highlighedBooks.get(i).getBookID()%>"><%=highlighedBooks.get(i).getTitle()%></a></h4>
                    <p>By <%=highlighedBooks.get(i).getAuthor()%></p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$<%=highlighedBooks.get(i).getPrice()%></i> <span class="item_price">$<%=highlighedBooks.get(i).getPrice()%></span><a onclick="addBookToCart('${requestScope['javax.servlet.forward.request_uri']}',<%=highlighedBooks.get(i).getBookID()%>)"class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>
            </div>
            <%
                }
            %>
            <div class="clearfix"></div>
        </div>
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">RECOMMENDED</h3>
        <div class="new-collections-grids">
            <%
                List<Book> randomBooks = (List<Book>) request.getAttribute("randomBooks");
                for (int i=0;i<4;i++) {
            %>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="bookDetail?bookID=<%= randomBooks.get(i).getBookID()%>" class="product-image"><img src="<%=randomBooks.get(i).getImage()%>" alt=" "
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
                    <h4><a href="bookDetail?bookID=<%= randomBooks.get(i).getBookID()%>"><%=randomBooks.get(i).getTitle()%></a></h4>
                    <p>By <%=randomBooks.get(i).getAuthor()%></p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$<%=randomBooks.get(i).getPrice()%></i> <span class="item_price">$<%=randomBooks.get(i).getPrice()%></span><a onclick="addBookToCart('${requestScope['javax.servlet.forward.request_uri']}',<%=randomBooks.get(i).getBookID()%>)" class="item_add">add to cart </a>
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
<%
//    session.setAttribute("recentPath",request.getRequestURI()+request.getQueryString()!=null?request.getQueryString():"");
%>
<!-- //collections-bottom -->
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>