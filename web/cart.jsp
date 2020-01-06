<%@ page import="vn.edu.nlu.fit.model.Book" %>
<%@ page import="vn.edu.nlu.fit.model.Cart" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
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
    <link rel="stylesheet" href="css/order.css">
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
            <li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Checkout Page</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- checkout -->
<div class="checkout">
    <div class="container">
        <%
            Cart cart = (Cart) request.getAttribute("cart");
        %>
        <%
            if (cart.getNumberOfBookTitles() == 0) {
        %>
        There is no item in your cart!
        <%
        } else {
        %>
        <h3 class="animated wow slideInLeft" data-wow-delay=".5s">Your shopping cart contains:
            <span><%=cart.getNumberOfBookTitles()%> Products</span></h3>
        <div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
            <table class="timetable_sub">
                <thead>
                <tr>
                    <th>SL No.</th>
                    <th>Product</th>
                    <th>Quality</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Remove</th>
                </tr>
                </thead>
                <%
                    HashMap<Book, Integer> books = cart.getBooks();
                    int i = 0;
                    for (Map.Entry<Book, Integer> bookAndQuantity : books.entrySet()) {
                        Book book = bookAndQuantity.getKey();
                        Integer quantity = bookAndQuantity.getValue();
                %>
                <tr class="rem rem<%=book.getBookID()%>">
                    <td class="invert"><%=i++%>
                    </td>
                    <td class="invert-image"><a href="/bookDetail?bookID=<%=book.getBookID()%>"><img
                            src="<%=book.getImage()%>" alt=" "
                            class="img-responsive"/></a></td>
                    <td class="invert">
                        <div class="quantity">
                            <div class="quantity-select">
                                <div onclick="removeBookItemFromCart('/',<%=book.getBookID()%>)"
                                     class="entry value-minus">&nbsp;
                                </div>
                                <div class="entry value"><span><%=quantity%></span></div>
                                <div onclick="increaseQuantityBookToCart('/', <%=book.getBookID()%>)"
                                     class="entry value-plus active">&nbsp;
                                </div>
                            </div>
                        </div>
                    </td>
                    <td class="invert"><%=book.getTitle()%>
                    </td>
                    <td class="invert">$<%=book.getPrice()%>
                    </td>
                    <td class="invert">
                        <div class="rem">
                            <div onclick="removeAllItemsOfABookFromCart('/',<%=book.getBookID()%>);"
                                 class="close close<%=book.getBookID()%>"></div>
                        </div>
                        <script>$(document).ready(function (c) {
                            $('.close<%=book.getBookID()%>').on('click', function (c) {
                                $('.rem<%=book.getBookID()%>').fadeOut('slow', function (c) {
                                    $('.rem<%=book.getBookID()%>').remove();
                                });
                            });
                        });
                        </script>
                    </td>
                </tr>
                <%
                    }
                %>
                <!--quantity-->
                <script>
                    $('.value-plus').on('click', function () {
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                        divUpd.text(newVal);
                    });

                    $('.value-minus').on('click', function () {
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                        if (newVal >= 1) divUpd.text(newVal);
                    });
                </script>
                <!--quantity-->
            </table>
        </div>
        <div class="checkout-left">
            <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                <ul>
                    <li>Total <i>-</i> <span>$<%=cart.getPrice()%> </span></li>
                    <li>Discount <i>-</i> <span>$<%=cart.getDiscount()%> </span></li>
                    <li>Delivery Charges <i>-</i> <span>$<%=cart.getDeliveryPrice()%> </span></li>
                    <li>Total <i>-</i> <span>$<%=cart.getTotal()%></span></li>
                </ul>
                <a href="/order"><input type="submit" value="ORDER" class="form-button"></a>
            </div>
            <%
                }
            %>
            <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                <a href="/"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue
                    Shopping</a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //checkout -->
<!-- footer -->
<jsp:include page="/footer"></jsp:include>
<!-- //footer -->
</body>
</html>