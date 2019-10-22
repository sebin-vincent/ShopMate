$(function(){
    //var $parent =$('.col-lg-12')
    var $parent_image =$('#product')
    var $product_feature=$('#product_feature')
    var status="active"
    $.ajax({
        type: "GET",
        url: "http://localhost:8082/sku/248",
        success: function (response) {
            $.each(response, function (indexInArray, payload ) { 
                
            });


      if (response.payload[0].onSale == 0) {
        status = "Out of stock";

      }
      else {
        status = "On stock"
      }
      //append sku imaage

      $parent_image.append(`<div data-thumb="img/product_details/prodect_details_1.png">
           <img src="${response.payload[10].imageUrl}" style="    margin-left: 149px;
           " />
         </div>`);
      //append sku details
      $product_feature.append(`<h3>${response.payload[0].skuName}</h3>
         <h2>$${response.payload[0].salePrice}</h2> 
         <ul class="list">
           <li>
             <a class="active" href="#">
               <span>Category</span> : Mobile</a>
           </li>
           <li>
             <a href="#"> <span>Availibility</span> : ${status}</a>
           </li>
         </ul>
         <p>
            ${response.payload[0].discription}
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
      //var dis=response.payload[0].discription

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
      //console.log(dis)
      //$parent.append('<div class="row">   <div class="column">  <img src="../img/category/category_12.png" alt="Snow" style="width:100%">              <div class="category_social_icon">  <ul>  <li><a href="#"><i class="ti-heart"></i></a></li>   <li><a href="#"><i class="ti-bag"></i></a></li>   </ul><a href="single-product.html"><h5 style="margin-left: 44px;">Long Sleeve TShirt</h5></a>              </div>  <p style="margin-left: 69px;">$150.00</p>          </div> </div>');

      //$parent.append('<div class="col-lg-4 col-sm-6">    <div class="single_category_product">  <div class="single_category_img">        <img src="../img/category/category_12.png" alt="">   <div class="category_social_icon">      <ul>    <li><a href="#"><i class="ti-heart"></i></a></li>  <li><a href="#"><i class="ti-bag"></i></a></li>  </ul>    </div>   <div class="category_product_text">       <a href="single-product.html"><h5>Long Sleeve TShirt</h5></a>        <p>$150.00</p>      </div> </div></div>            </div>');
      //$parent.append('<div class="col-lg-4 col-sm-6">    <div class="single_category_product">  <div class="single_category_img">        <img src="../img/category/category_12.png" alt="">   <div class="category_social_icon">      <ul>    <li><a href="#"><i class="ti-heart"></i></a></li>  <li><a href="#"><i class="ti-bag"></i></a></li>  </ul>    </div>   <div class="category_product_text">       <a href="single-product.html"><h5>Long Sleeve TShirt</h5></a>        <p>$150.00</p>      </div> </div></div>            </div>');

      //console.log(response.payload[0]);   
    }
  });

});

