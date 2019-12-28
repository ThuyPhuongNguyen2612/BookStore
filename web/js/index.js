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

function updateCommentsHtml(bookID) {
    $("#comments").load("/bookDetail/comments?bookID=" + bookID, null, function () {
        var numberOfComments = $("#comments > div").length
        $("#numberOfComments").html(
            numberOfComments
        )
    });
}

function addComment() {
    var bookID = document.commentForm.bookID.value
    var content = document.commentForm.content.value
    $.post('/bookDetail/comment', {
        bookID: bookID,
        content: content
    }, function () {
        updateCommentsHtml(bookID);
    });
    return false;

}

if (document && document.commentForm && document.commentForm.bookID) {
    setInterval(function () {
        var bookID = document.commentForm.bookID.value
        updateCommentsHtml(bookID)
    }, 10000);
}