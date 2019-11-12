var orderId;
var input;
$(document).ready(function () {
    var sessionId = sessionStorage.getItem("profile_id");

    if (sessionId == null) {
        window.location.href = "login.html"
    } else {
        var urlOriginal = "http://localhost:8084/order/cart/" + sessionId + "/1"
        $.ajax({

            type: "GET",
            url: urlOriginal,

            success: function (response) {


                if (response.payload[0].item.length == 0) {

                    var temp = document.getElementsByClassName("table-responsive")
                    $(temp).remove();
                    document.getElementById("job").innerHTML = "<h2>No items in the cart <h2>"

                } else {

                    var items = response.payload[0].item
                    orderId = response.payload[0].orderId

                    sessionStorage.setItem("cartItems", items.length)
                    sessionStorage.setItem("orderId",orderId);

                    for (let m = 0; m < items.length; m++) {



                        var skuId = items[m].skuId
                        var url = "http://localhost:8082/sku/details/" + skuId


                        $.ajax({
                            async: false,
                            type: "GET",
                            url: url,
                            async: false,
                            success: function (response) {

                                console.log(response);
                                sessionStorage.setItem("skuNameToCheckout" + m, response.skuName);
                                sessionStorage.setItem("salePrice" + m, response.salePrice);
                                //

                                var trTag = document.createElement("tr")
                                trTag.setAttribute("class", "cart-row")
                                trTag.setAttribute("id", `${skuId}`)
                                var tdTag1 = document.createElement("td")
                                var tdTag2 = document.createElement("td")
                                tdTag2.setAttribute("class", "item-price")
                                var tdTag3 = document.createElement("td")
                                var tdTag4 = document.createElement("td")
                                tdTag4.setAttribute("class", "total")
                                //var tdTag5 = document.createElement("td")




                                var divTag1 = document.createElement("div")
                                divTag1.setAttribute("class", "media")

                                var divTag2 = document.createElement("div")
                                divTag2.setAttribute("class", "d-flex")

                                var divTag3 = document.createElement("div")
                                divTag3.setAttribute("class", "media-body")

                                var subDivTag = document.createElement("div")
                                subDivTag.setAttribute("class", "product_count")



                                divTag1.appendChild(divTag2);
                                divTag1.appendChild(divTag3);

                                tdTag1.appendChild(divTag1)
                                tdTag3.appendChild(subDivTag);


                                divTag2.innerHTML = `<img src='${response.imageUrl} ' alt=''>`

                                tdTag2.innerHTML = `<h5>${items[m].unitPrice}</h5>`
                                divTag3.innerHTML = `<p id="item-name">${response.skuName}</p>`


                                var itemPrice = `${items[m].unitPrice}`

                                subDivTag.innerHTML = `<div class="cart-quantity cart-column">
                               <input class="cart-quantity-input" type="number" value="${items[m].quantity}" max=10 onKeyDown="return false">
                               <button class="btn btn-danger" id="delete" type="button">REMOVE</button>
                           </div>`



                                trTag.appendChild(tdTag1);
                                trTag.appendChild(tdTag2);
                                trTag.appendChild(tdTag3);
                                trTag.appendChild(tdTag4);


                                $(trTag).prependTo(document.getElementById("cart-item"));

                                subTotal()

                            }
                        });
                        var removeCartItem = document.getElementsByClassName('btn-danger')
                        var quantityInputs = document.getElementsByClassName("cart-quantity-input ")

                        input = quantityInputs[0]
                        input.addEventListener('change', quantityChanged)

                        var button = removeCartItem[0]
                        button.addEventListener('click', removeItem)

                    }



                }



            }
        });
    }



});

function logout() {
    //console.log("hi")
    console.log(sessionStorage.getItem("profile_id"))
    sessionStorage.removeItem("profile_id")
    console.log(sessionStorage.getItem("profile_id"))

}
function quantityChanged(event) {
    var input = event.target
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1
    }
    if (isNaN(input.value) || input.value > 10) {
        input.value = 10
    }

    var id = $(input.parentElement.parentElement.parentElement.parentElement).attr('id')
    console.log(typeof(input.value))


    subTotal()

}

function removeItem(event) {
    var buttonClicked = event.target
    // console.log(event.data)

    buttonClicked.parentElement.parentElement.parentElement.parentElement.remove()
    var id = $(buttonClicked.parentElement.parentElement.parentElement.parentElement).attr('id')


    var removeUrl = `http://localhost:8081/cart/delete/?orderId=${orderId}&skuId=${id}`

    $.ajax({
        type: "delete",
        url: removeUrl,
        async: false,
        success: function (response) {

        }
    });
    var quantity = input.value
    

    updateInventoryData = {

        "skuId": id,
        "quantity": 0

    }

    $.ajax({

        type: "PUT",
        url: "http://localhost:8083/items/restore/",
        data: JSON.stringify(updateInventoryData),
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        async: false,

        success: function (responseFromInventory) {

            

        }
    });





    subTotal()
}

function subTotal() {

    var cartItems = document.getElementById("cart-item")

    var cartRows = cartItems.getElementsByClassName("cart-row")

    var subtotal = 0
    for (let k = 0; k < cartRows.length; k++) {
        var cartRow = cartRows[k]
        var priceElement = cartRow.getElementsByClassName("item-price")[0]

        var quantityElement = cartRow.getElementsByClassName("cart-quantity-input")[0]

        var price = parseFloat(priceElement.innerText)
        var quantity = quantityElement.value
        sessionStorage.setItem("quantity", quantity);
        var total = price * quantity
        document.getElementsByClassName("total")[k].innerHTML = `<h5> ${total}</h5>`


        subtotal = subtotal + (price * quantity)
        sessionStorage.setItem("subtotal", subtotal);

    }

    document.getElementById("subtotal").innerHTML = `${subtotal}`
}


function checkout() {
    var cartRows = document.getElementsByClassName("cart-row")

    for (let index = 0; index < cartRows.length; index++) {
        var skuId = $(cartRows[index]).attr('id')
        var quantity = document.getElementsByClassName("cart-quantity-input")[index].value

        updateInventoryData = {

            "skuId": skuId,
            "quantity": quantity

        }

        $.ajax({

            type: "PUT",
            url: "http://localhost:8083/items/restore/",
            data: JSON.stringify(updateInventoryData),
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            async: false,

            success: function (responseFromInventory) {



            }
        });

        $.ajax({
            type: "PUT",
            url: `http://localhost:8084/order/update/quantity/${orderId}/${skuId}/${quantity}`,
            async: false,
            success: function (response) {
                
            }
        });
    }
}


