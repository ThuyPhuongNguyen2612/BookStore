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

function addComment() {
    var bookID = document.commentForm.bookID.value
    var content = document.commentForm.content.value
    var userName = document.commentForm.userName.value
    $.post('/bookDetail/comment', {
        bookID: bookID,
        content: content
    }, function () {
        var old = $("#comments").html();
        $("#comments").load("comment.jsp", {userName: userName, content: content}, function () {
            $("#comments").prepend(old);
        });
    });
    return false;

}
