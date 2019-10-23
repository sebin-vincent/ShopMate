
$(function(){
  var url      = window.location.href;
    //var url = $(location).attr('href')
    parts = url.split("?");
    last_part = parts[parts.length-1];
    console.log(last_part);
    //var $parent =$('.col-lg-12')
    var $parent_image =$('#product')
    var $product_feature=$('#product_feature')
    var status="active"
    $.ajax({
        type: "GET",
        url: "http://localhost:8082/sku/details/"+last_part,
        success: function (response) {
            $.each(response, function (indexInArray, payload ) { 
                
            });


      if (response.onSale == 1) {
        status = "Out of stock";

      }
      else {
        status = "On stock"
      }
      //append sku imaage

      $parent_image.append(`<div data-thumb="img/product_details/prodect_details_1.png">
           <img src="${response.imageUrl}" style="    margin-left: 149px;
           " />
         </div>`);
      //append sku details
      $product_feature.append(`<h3>${response.skuName}</h3>
         <h2>$${response.salePrice}</h2> 
         <ul class="list">
           <li>
             <a class="active" href="#">
               <span>Category</span> : Mobile</a>
           </li>
           <li>
             <a href=""> <span>Availibility</span> : ${status}</a>
           </li>
         </ul>
         <p>
            ${response.discription}
        </p>
         <div class="card_area">
           <div class="product_count d-inline-block">
             <span class="inumber-decrement"> <i class="ti-minus"></i></span>
             <input class="input-number" type="text" value="1" min="0" max="10">
             <span class="number-increment"> <i class="ti-plus"></i></span>
           </div>
           <div class="add_to_cart">
               <a href="#" class="btn_3" id="add-to-cart-btn">add to cart</a>
               <a href="#" class="like_us"> <i class="ti-heart"></i> </a>
           </div>
           <div class="social_icon">
               <a href="https://www.facebook.com/" class="fb"><i class="ti-facebook"></i></a>
               <a href="#" class="tw"><i class="ti-twitter-alt"></i></a>
               <a href="https://www.linkedin.com/company" class="li"><i class="ti-linkedin"></i></a>
           </div>
         </div>
       </div>
     </div>`);
      

      $("#add-to-cart-btn").click(function (e) {

        e.preventDefault();

        $.ajax({
          type: "GET",
          url: "http://localhost:8084/order/get/orderid/1234", //TODO paste profile id from session

          success: function (responseFromOrder) {

            var orderId = responseFromOrder.payload[0].orderId;
            var profileId = '1234'; //TODO fetch from session
            var skuId = response.payload[0].skuId;
            var skuQty = 1;
            var unitPrice = response.payload[0].salePrice;

            var addToCartRequestData = {

              "orderId": orderId,
              "skuId": skuId,
              "quantity": skuQty,
              "unitPrice": unitPrice,
              "lastModifiedDate": null

            };

            $.ajax({
              type: "POST",
              url: "http://localhost:8081/cart/add",
              data: JSON.stringify(addToCartRequestData),
              dataType: "json",
              contentType: "application/json; charset=utf-8",

              success: function (responseFromCart) {

                updateInventoryData = {

                  "skuId": skuId,
                  "quantity": skuQty

                }

                $.ajax({
                  type: "PUT",
                  url: "http://localhost:8083/items/reserve",
                  data: JSON.stringify(updateInventoryData),
                  dataType: "json",
                  contentType: "application/json; charset=utf-8",

                  success: function (responseFromInventory) {

                    $("#add-to-cart-btn").html("Added to Cart");

                  }
                });

              }
            });

          }
        });

      });
         
    }
  });

});

