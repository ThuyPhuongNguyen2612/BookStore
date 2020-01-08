<%@ page import="vn.edu.nlu.fit.model.Book" %>
<%@ page import="vn.edu.nlu.fit.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="static java.lang.Math.max" %>
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
            <li class="active">Products</li>
        </ol>
    </div>
</div>
<div class="products">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="categories animated wow slideInUp" data-wow-delay=".5s">
                <h3>Categories</h3>
                <ul class="cate">
                    <%
                        List<Category> categoryList = (List<Category>) request.getAttribute("categories");
                        for (Category category : categoryList) {
                    %>
                    <li><a href="products?type=<%=category.getCategoryID()%>&page=1"><%=category.getName()%>
                    </a> <span>(<%=category.getQuantity()%>)</span></li>
                    <%
                        }
                    %>
                </ul>
            </div>
            <div class="new-products animated wow slideInUp" data-wow-delay=".5s">
                <h3>New Books</h3>
                <div class="new-products-grids">
                    <%
                        List<Book> newBooks = (List<Book>) request.getAttribute("newBooks");
                        for (int i = max(newBooks.size() - 3, 0); i < newBooks.size(); i++) {
                    %>
                    <div class="new-products-grid">
                        <div class="new-products-grid-left">
                            <a href="bookDetail?bookID=<%=newBooks.get(i).getBookID()%>"><img
                                    src="<%=newBooks.get(i).getImage()%>" alt=" " class="img-responsive"/></a>
                        </div>
                        <div class="new-products-grid-right">
                            <h4>
                                <a href="bookDetail?bookID=<%=newBooks.get(i).getBookID()%>"><%=newBooks.get(i).getTitle()%>
                                </a></h4>
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="img/star.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="img/star.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="img/star.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="img/star1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="img/star1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="simpleCart_shelfItem new-products-grid-right-add-cart">
                                <p><span class="item_price">$180</span><a
                                        onclick="addBookToCart('/',<%=newBooks.get(i).getBookID()%>)" class="item_add">add
                                    to cart </a></p>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="men-position animated wow slideInUp" data-wow-delay=".5s">
                <a href="single.jsp"><img src="img/Q002.jpg" alt=" " class="img-responsive"/></a>
                <div class="men-position-pos">
                    <h4>Summer collection</h4>
                    <h5><span>55%</span> Flat Discount</h5>
                </div>
            </div>
        </div>
        <div class="col-md-8 products-right">
            <div class="products-right-grid">
                <div class="products-right-grids animated wow slideInRight" data-wow-delay=".5s">
                    <div class="sorting">
                        <select id="country" onchange="change_country(this.value)" class="frm-field required sect">
                            <option value="null">Default sorting</option>
                            <option value="null">Sort by popularity</option>
                            <option value="null">Sort by average rating</option>
                            <option value="null">Sort by price</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="products-right-grids-position animated wow slideInRight" data-wow-delay=".5s">
                    <img src="img/C001.jpg" alt=" " class="img-responsive"/>
                    <div class="products-right-grids-position1">
                        <h4>2019 New Collection</h4>
                        <p></p>
                    </div>
                </div>
            </div>
            <div class="products-right-grids-bottom">

                <%
                    List<Book> books = (List<Book>) request.getAttribute("books");
                    for (int i = 0; i < 3; i++) {
                %>

                <%
                    for (int j = 0; j < 3; j++) {
                        if ((i * 3) + j < books.size()) {
                            Book book = books.get((i * 3) + j);

                %>
                <div class="col-md-4 products-right-grids-bottom-grid">
                    <div class="new-collections-grid1 products-right-grid1 animated wow slideInUp" data-wow-delay=".5s">
                        <div class="new-collections-grid1-image">
                            <a href="bookDetail?bookID=<%=book.getBookID()%>" class="product-image"><img
                                    src="<%=book.getImage()%>" alt=" " class="img-responsive"></a>
                            <div class="new-collections-grid1-image-pos products-right-grids-pos">
                                <a href="bookDetail?bookID=<%=book.getBookID()%>">Quick View</a>
                            </div>
                            <div class="new-collections-grid1-right products-right-grids-pos-right">
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="img/star.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div class="rating-left">
                                        <img src="img/star.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div class="rating-left">
                                        <img src="img/star.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div class="rating-left">
                                        <img src="img/star1.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div class="rating-left">
                                        <img src="img/star1.png" alt=" " class="img-responsive"/>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <h4>
                            <a href="bookDetail?bookID=<%=book.getBookID()%>"><%=book.getTitle()%>
                            </a></h4>
                        <p>By <%=book.getAuthor()%>
                        </p>
                        <div class="simpleCart_shelfItem products-right-grid1-add-cart">
                            <p><i>$<%=book.getPrice()%>
                            </i> <span class="item_price">$250</span><a
                                    onclick="addBookToCart('/',<%=books.get(i).getBookID()%>)" class="item_add">add to
                                cart </a></p>
                        </div>
                    </div>
                </div>
                <%
                            }
                        }
                    }
                %>
                <div class="clearfix"></div>
            </div>
            <nav class="numbering animated wow slideInRight" data-wow-delay=".5s">
                <ul class="pagination paging">
                    <%
                        int numberOfPages = (int) request.getAttribute("numberOfPages");
                        int p = (int) request.getAttribute("page");
                        int t = (int) request.getAttribute("type");
                    %>
                    <li>
                        <a href="products?type=<%=t%>&page=<%=1%>" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <%
                        if (p==numberOfPages && numberOfPages>3){
                    %>
                    <li><a href="products?type=<%=t%>&page=<%=p-2%>"><%=p - 2%></a></li>
                    <%
                        }
                        if (p > 1) {
                    %>
                    <li><a href="products?type=<%=t%>&page=<%=p-1%>"><%=p - 1%></a></li>
                    <%
                        }
                    %>
                    <li class="active"><a href="#"><%=p%><span class="sr-only">(current)</span></a></li>
                    <%
                        if (p < numberOfPages) {
                    %>
                    <li><a href="products?type=<%=t%>&page=<%=p + 1%>"><%=p + 1%></a></li>
                    <%
                        }
                        if (p==1 && numberOfPages>3){
                    %>
                    <li><a href="products?type=<%=t%>&page=<%=p + 2%>"><%=p + 2%></a></li>
                    <%
                        }
                    %>
                    <li>
                        <a href="products?type=<%=t%>&page=<%=numberOfPages%>" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>