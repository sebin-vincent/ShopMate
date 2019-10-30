function delete_item(element) {

    var data = {
        profileId: sessionStorage.getItem("profile_id"),
        skuId: element
    }

    $.ajax({
        type: "DELETE",
        url: "http://localhost:8080/wishlist/delete",
        data: JSON.stringify(data),
        dataType : "json",
        contentType: "application/json; charset=utf-8",
    
        success: function (response) {
            document.location.reload();
        }
    });
}


$(document).ready(function () {
    var sessionId = sessionStorage.getItem("profile_id");
    var urlOriginal = "http://localhost:8080/wishlist/" + sessionId + "/retrieve"
    //var urlOriginal = "http://localhost:8080/wishlist/" + 1234 + "/retrieve"


    var skuPrice, skuImage, skuName;
    var index = 0;
    //TODO retrieve from session - userId
    //TODO add to cart callback url
    //TODO work with ordering stuff
    $.ajax({
        type: "GET",
        url: urlOriginal, //TODO replace 1234 with profile id

        success: function (responseFromProfile) {

             //console.log(responseFromProfile.payload[0][0]);


            for (let index = 0; index < responseFromProfile.payload[0].length; index++) {

                // console.log(responseFromProfile.payload[0][index]);
                $.ajax({
                    type: "GET",
                    url: `http://localhost:8082/sku/latest/${responseFromProfile.payload[0][index]}`,

                    success: function (responseFromCatalog) {

                        // index = index + 1;
                        skuPrice = responseFromCatalog.skuPrice;
                        // console.log(skuPrice);
                        skuImage = responseFromCatalog.skuImage;
                        // console.log(skuImage)

                        $.ajax({
                            type: "GET",
                            url: `http://localhost:8083/items/${responseFromProfile.payload[0][index]}/name`,

                            success: function (responseFromInventory) {

                                skuName = responseFromInventory.payload;
                                // console.log(skuName);
                                // console.log(`${skuName} = ${responseFromCatalog.skuPrice}`);

                                var baseTemplate = `
        
                                        <div class="wish-list-item">
                                        <div class="wish-list-image-container"
                                        onclick="window.open('single-product.html?${responseFromProfile.payload[0][index]}');" style="cursor:pointer;"
                                        ><img src="${responseFromCatalog.skuImage}" 
                                        alt="${responseFromInventory.payload}"/>
        
                                        </div>
        
                                        <div class="wish-list-item-title"  
                                        >
                                        ${responseFromInventory.payload}<br>
        
                                        <span class="span-price">₹ ${responseFromCatalog.skuPrice}</span>
        
                                        <div class="interaction-section" style="margin: 20px;">
                                        <button id="delete-btn" onclick="delete_item(${responseFromProfile.payload[0][index]})" style="border:none; background:none;">
                                        <i class="fas fa-trash-alt"></i></button>
                                        </div>
                                        </div>
        
        
                                        </div>
        
                                    </div>
        
                                        `;

                                        $("#delete-btn").click(function (e) { 
                                            e.preventDefault();
                        
                                            console.log(responseFromInventory.payload)
                                            
                                        });
                                       
                                console.log(responseFromInventory.payload);
                                // console.log(skuPrice);

                                $("#wish-list-parent").append(baseTemplate);

                               
                       

                            }



                        });


                    }
                });
                //
               
            }
          

        }
    });


});














// $("#add-to-cart-btn").click(function (e) {

//     e.preventDefault();

//     $.ajax({
//         async: false,
//         type: "GET",
//         url: "http://localhost:8084/order/get/orderid/" + sessionId, //TODO paste profile id from session
//         success: function (responseFromOrder) {
//             var orderId = responseFromOrder.payload[0].orderId;

//             var profileId = sessionId; //TODO fetch from session
//             var skuId = responseFromProfile.payload[0][index];
//             console.log(skuId);
//             var skuQty = 1;
//             var unitPrice = responseFromCatalog.skuPrice;
//             var addToCartRequestData = {

//                 "orderId": orderId,
//                 "skuId": skuId,
//                 "quantity": skuQty,
//                 "unitPrice": unitPrice,
//                 "lastModifiedDate": null

//             };

//             $.ajax({
//                 type: "POST",
//                 url: "http://localhost:8081/cart/add",
//                 data: JSON.stringify(addToCartRequestData),
//                 dataType: "json",
//                 contentType: "application/json; charset=utf-8",
//                 success: function (responseFromCart) {

//                     updateInventoryData = {

//                         "skuId": skuId,
//                         "quantity": skuQty

//                     }

//                     $.ajax({

//                         type: "PUT",
//                         url: "http://localhost:8083/items/reserve",
//                         data: JSON.stringify(updateInventoryData),
//                         dataType: "json",
//                         contentType: "application/json; charset=utf-8",

//                         success: function (responseFromInventory) {

//                            alert("added");

//                         }
//                     });

//                 }
//             });

//         }
//     });

// });
