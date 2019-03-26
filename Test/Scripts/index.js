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

var pushProductSession = function () {
    

    $(".pushProduct").click((e) => {
        var id = e.target.getAttribute("id");
        var quantity = document.getElementById(id).value;
        $.ajax({
            url: "/Cart/UpdateProductSession/"+id+"/"+quantity,
            type: 'POST',           
            success: function (data) {
                console.log("update successfully");
                var cartItemsSize = $('#cartItemsSize');
                cartItemsSize.text(data.length);
                window.location.href = "/Cart/ViewCart";

            },
            error: function (err) {
                console.log(err);
            }
        });
    });
};

$(".removeItem").click((e) => {
    
    var id = e.target.getAttribute("data-id");
    console.log(id);
    $(".formRemoveProduct").submit((e) => {
        e.preventDefault();
        $.ajax({
            url: "/Cart/RemoveProduct/" + id,
            type: 'POST',            
            success: function (deletedId) {

                $('#item' + deletedId).remove();
            },
            error: function (err) {
                console.log(err);
            }
        });
    });
});

