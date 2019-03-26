function addToCart(id) {
    $.ajax({
        url: "/Home/AddCart/" + id + "/1",
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

$('.loadMore').click(() => {
    console.log($(".loadMore").attr("page"))
    $.ajax({
        url: $(".loadMore").attr("url") + $(".loadMore").attr("page"),
        type: 'get',
        success: function (data) {
            console.log("here")
            dataFinal = JSON.parse(data)
            if (dataFinal.length == 0) {
                $(".loadMore").hide();
                return;
            }
            for (var i = 0; i < dataFinal.length; i++) {
                $("#listProductCategory")
                .append(function(){
                    var html = `<div class ="oneProduct oneProductInPhone card col-sm-3">
                                <img class ="card-img-top" src="../../../Images/`+ dataFinal[i].image + `" alt="Card image cap" />
                                <div class ="card-body">
                                    <p class ="productTitle">`+dataFinal[i].name+`</p>
                                    <p class ="productPrice"> $`+dataFinal[i].price+`</p>
                                    <div class ="productControl">
                                        <div class ="addProductCart">
                                            <i class ="fas fa-shopping-cart"></i>
                                            <a onclick= "addToCart(`+dataFinal[i].productID+`)" style="cursor: pointer"> Add to cart</a>
                                        </div>
                                        <hr style="margin:2px 0">
                                        <div class ="productDetailLink">
                                            <i class ="fas fa-info-circle"></i>
                                            <a href="#"> More details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            `
                    return html;
                })
            }
            console.log("old: " + parseInt($(".loadMore").attr("page")))
            var page = parseInt($(".loadMore").attr("page")) + 1;
            console.log("new:" + page)
            $(".loadMore").attr("page", page);
        },
        error: function (err) {
            console.log(err);
        }
    })
})



$('.searchButton').click(() => {
    console.log("search ne")
    $.ajax({
        url: '/Search/Paging?searchString=' + $(".form-control").val() + "&page=" + $(".searchButton").attr("page"),
        type: 'get',
        success: function (data) {
            console.log("here")
            dataFinal = JSON.parse(data)
            if (dataFinal.length == 0) {
                $(".searchButton").hide();
                return;
            }
            for (var i = 0; i < dataFinal.length; i++) {
                $("#listProductCategory")
                .append(function () {
                    var html = `<div class ="oneProduct oneProductInPhone card col-sm-3">
                                <img class ="card-img-top" src="../../../Images/`+ dataFinal[i].image + `" alt="Card image cap" />
                                <div class ="card-body">
                                    <p class ="productTitle">`+ dataFinal[i].name + `</p>
                                    <p class ="productPrice"> $`+ dataFinal[i].price + `</p>
                                    <div class ="productControl">
                                        <div class ="addProductCart">
                                            <i class ="fas fa-shopping-cart"></i>
                                            <a onclick= "addToCart(`+ dataFinal[i].productID + `)" style="cursor: pointer"> Add to cart</a>
                                        </div>
                                        <hr style="margin:2px 0">
                                        <div class ="productDetailLink">
                                            <i class ="fas fa-info-circle"></i>
                                            <a href="#"> More details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            `
                    return html;
                })
            }
            console.log("old: " + parseInt($(".searchButton").attr("page")))
            var page = parseInt($(".searchButton").attr("page")) + 1;
            console.log("new:" + page)
            $(".searchButton").attr("page", page);
        },
        error: function (err) {
            console.log(err);
        }
    })
})
