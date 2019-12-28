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

function removeAllItemsOfABookFromCart(hostUrl, bookID) {
    $.ajax(hostUrl + 'cart/removeAll?bookID=' + bookID);
}

function removeBookItemFromCart(hostUrl, bookID) {
    $.ajax(hostUrl + 'cart/removeOne?bookID=' + bookID);
}

function increaseQuantityBookToCart(hostUrl, bookID) {
    $.ajax(hostUrl + 'cart/add?bookID=' + bookID);
}


