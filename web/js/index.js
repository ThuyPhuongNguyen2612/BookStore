function addBookToCart(hostUrl, bookId) {
    $.ajax(hostUrl + 'cart/add?bookID=' + bookId, {
        statusCode: {
            500: function () {
                alert('failed')
            },
            200: function () {
                alert('Add to cart successfully!!!')
            }
        }
    });
}

function removeAllItemsOfABookFromCart(bookID) {
    $.ajax('/cart/removeAll?bookID=' + bookID);
}

function removeBookItemFromCart(bookID) {
    $.ajax('/cart/removeOne?bookID=' + bookID);
}

function addBookToCart(bookID) {
    $.ajax('/cart/add?bookID=' + bookID);
}


