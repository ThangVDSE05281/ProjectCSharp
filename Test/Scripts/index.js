function addToCart(id) {
    $.ajax({
        url: "/Home/AddCart/" + id+"/1",
        type: 'Post',
        success: function (body) {
            console.log(body)
            var cartItemsSize = $('#cartItemsSize');
            cartItemsSize.text(body.length);
        },
        error: function (body) {
            console.log(body)
        }
    })
}
