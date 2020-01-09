function removeCategory(categoryId) {
    $.ajax('/admin/removeCategory?categoryId=' + categoryId, {
        statusCode: {
            500: function () {
                swal("", "Failed", "error");
            },
            200: function () {
                swal("", "Remove category successfully!!!", "success");
                $('.rem<%=category.getCategoryID()%>').remove();
            }
        }
    });
}

function removeBook(bookId) {
    $.ajax('/admin/removeBook?bookId=' + bookId, {
        statusCode: {
            500: function () {
                swal("", "Failed", "error");
            },
            200: function () {
                swal("", "Remove book successfully!!!", "success");
                $('.rem' + bookId).remove();
            }
        }
    });
}