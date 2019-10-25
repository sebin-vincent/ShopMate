
//var profileId=sessionStorage.getItem("profile_id");

var sessionId= sessionStorage.getItem("profile_id"); 

$(function () {
  var url = window.location.href;
  //var url = $(location).attr('href')
  parts = url.split("?");
  last_part = parts[parts.length - 1];
  //console.log(last_part);
  //var $parent =$('.col-lg-12')
  var $parent_image = $('#product')
  var $product_feature = $('#product_feature')
  var status = "active"
  var skulist = [];
  $.ajax({
    async: false,
    type: "GET",
    dataType: "json",
    url: "http://localhost:8080/wishlist/4/retrieve",


    success: function (response) {
      for (var i = 0; i < response.payload[0].length; i++) {
        skulist.push(response.payload[0][i]);

      }
    }

  });
  console.log(skulist[0]);
  $.ajax({
    async: false,
    type: "GET",
    url: "http://localhost:8082/sku/details/" + last_part,
    success: function (response) {
    
      skuId = response.skuId;
      $.each(response, function (indexInArray, payload) {

      });


      if (response.onSale == 1) {
        status = "Out of stock";

      }
      else {
        status = "On stock"
      }
      //append sku imaage

      $parent_image.append(`<div data-thumb="img/product_details/prodect_details_1.png">
           <img src="${response.imageUrl}" id="pdp_image"style="margin-left: 149px; " />
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

               <a  class="like_us" id="wish-list-button"> <i class="fa fa-heart" id="wish" ></i> </a>
           </div>
           <div class="social_icon">
               <a href="https://www.facebook.com/" class="fb"><i class="ti-facebook"></i></a>
               <a href="" class="tw"><i class="ti-twitter-alt"></i></a>
               <a href="https://www.linkedin.com/company" class="li"><i class="ti-linkedin"></i></a>
           </div>
         </div>
       </div>
     </div>`);
      var image=document.getElementById('pdp_image');
      var cart_button=document.getElementById('add-to-cart-btn');
      console.log(cart_button);
      if(status!="Out of stock"){
        image.setAttribute("style","opacity: 0.5");
        cart_button.disabled = true;
       // document.getElementById("add-to-cart-btn").disabled = true;

          console.log(status);
      }
      var wish_icon = document.getElementById("wish");
      for (var i = 0; i < skulist.length; i++) {
        if (skulist[i] == response.skuId) {
          wish_icon.setAttribute("style", "color:red;");
        }
      }

      $("#wish-list-button").click(function (e) {
        e.preventDefault();
        var wish_icon = document.getElementById("wish");
        console.log(wish_icon);
        var datas = {
          "profileId": sessionId,
          "skuId": last_part
        }
        $.ajax({
          async: false,
          type: "POST",
          contentType: "application/json",
          dataType: "json",
          url: "http://localhost:8080/wishlist/add",
          data: JSON.stringify(datas),
          success: function (response) {
            if (response.status_Message == "item added") {
              alert("Item added to your wish list");
              wish_icon.setAttribute("style", "color:red;");

            }
            else if (response.status_Message == "item exist") {
              alert("item removed from your wish list");
              wish_icon.setAttribute("style", "color:blue;");
            }
            else {
              alert("try again");
            }
          }
        });

      });

      $("#add-to-cart-btn").click(function (e) {

        e.preventDefault();

        $.ajax({
          async: false,
          type: "GET",
          url: "http://localhost:8084/order/get/orderid/"+sessionId, //TODO paste profile id from session

          success: function (responseFromOrder) {

            console.log(skuId)

            var orderId = responseFromOrder.payload[0].orderId;
            var profileId = sessionId; //TODO fetch from session
            var skuId = response.skuId;
            var skuQty = 1;
            var unitPrice = response.salePrice;

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

