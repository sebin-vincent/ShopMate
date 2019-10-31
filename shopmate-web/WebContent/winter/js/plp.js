
var sale_status1 = " "
var sale_status2;
var sale_status3;
var status;
var sessionId = sessionStorage.getItem("profile_id");
console.log(sessionId);
function productList(min, max) {
  $(function () {
    
    var url = window.location.href;
    var $parent = $('#products')
    var skulist = [];
    parts = url.split("?");
    last_part = parts[parts.length - 1];



    $.ajax({

      async: false,
      type: "GET",
      dataType: "json",
      url: "http://localhost:8080/wishlist/" + sessionId + "/retrieve",
      success: function (response) {
        for (var i = 0; i < response.payload[0].length; i++) {
          skulist.push(response.payload[0][i]);
        }
      }

    });

    $.ajax({
      async: false,
      type: "GET",
      url: "http://localhost:8082/sku/" + last_part,
      success: function (response) {
        var wishIcon = []
        for (var i = 0; i < (response.payload.length - 2); (i = i + 3)) {
          var x = i + 1;
          var y = i + 2;
          if ((response.payload[i].salePrice >= min && response.payload[i].salePrice <= max)) {
            wishIcon.push(response.payload[i].skuId)
            console.log(min, max)

            stock(`${response.payload[i].skuId}`, 1);
            stock(`${response.payload[x].skuId}`, 2);
            stock(`${response.payload[y].skuId}`, 3);

            $parent.append(` <div class="row" style="padding-right: 25px">  
                              <div class="column" style="padding-bottom: 64px;">  
                                 <a href="single-product.html?${response.payload[i].skuId}">
                                     <img src="${response.payload[i].imageUrl}" alt="Snow" style="width:185px;height:350px">
                                        <div class="category_social_icon">  
                                          <ul>  
                                            <li>
                                              <a  class="like_us" id="wish-list-button_${i}"> 
                                                 <i class="fa fa-heart" id="wish_${response.payload[i].skuId}" style="color:blue" >
                                                 </i>
                                              </a>
                                            </li>
                                            <li>
                                            <h5 style="margin-left: 40px;">${response.payload[i].skuName}</h5>
                                            </li>
                                            <li>
                                            <p style="margin-left: 69px;">$${response.payload[i].salePrice}</p>
                                          </ul>
                                        </a>  
                                        </div>  
  
                             </div>
  
                            </div>`
            );
            var image1 = `image_${response.payload[i].skuId}`
            var img1 = document.getElementById(image1);


            // var image2 = `image_${response.payload[x].skuId}`
            // var img2 = document.getElementById(image2);


            // var image3 = `image_${response.payload[y].skuId}`
            // var img3 = document.getElementById(image3);

            if (sale_status1 == "Out of Stock") {
              img1.setAttribute("style", "opacity: 0.4");
            }
            // if (sale_status2 == "Out of Stock") {
            //   img2.setAttribute("style", "opacity: 0.4");
            // }
            // if (sale_status3 == "Out of Stock") {
            //   img3.setAttribute("style", "opacity: 0.4");
            // }
            // $parent.append(` <div class="row" style="padding-right: 25px">  
            //                     <div class="column" style="padding-bottom: 64px;">  
            //                        <a href="single-product.html?${response.payload[i].skuId}">
            //                            <img src="${response.payload[i].imageUrl}" alt="Snow" style="width:185px;height:350px">
            //                               <div class="category_social_icon">  
            //                                 <ul>  
            //                                   <li>
            //                                     <a  class="like_us" id="wish-list-button_${i}"> 
            //                                        <i class="fa fa-heart" id="wish_${response.payload[i].skuId}" style="color:blue" >
            //                                        </i>
            //                                     </a>
            //                                   </li>
            //                                   <li>
            //                                   <h5 style="margin-left: 40px;">${response.payload[i].skuName}</h5>
            //                                   </li>
            //                                   <li>
            //                                   <p style="margin-left: 69px;">$${response.payload[0].listPrice}</p>
            //                                 </ul>
            //                               </a>  
            //                               </div>  

            //                    </div>

            //                   </div>`
            //                   );
          }
        }
        for (var j = 0; j < wishIcon.length; j++) {
          var wish_icon = document.getElementById("wish_" + wishIcon[j]);
         
          for (var i = 0; i < skulist.length; i++) {
            if (wishIcon[j] == skulist[i]) {
              wish_icon.setAttribute("style", "color:red;");

            }
          }
        }
        var wish_button = document.getElementsByClassName('fa fa-heart');
        for (var i = 1; i < wish_button.length; i++) {
          var input_i = wish_button[i];
          input_i.addEventListener('click', wishList);
        }


        function wishList(event) {
          if (sessionId == null) {
            alert("login to continue");
            document.location.href = "login.html";
          }
          else {
            var clicked = event.target;
            var id = clicked.id;
            var sku_ids = id.split("_");
            sku_id = sku_ids[sku_ids.length - 1];

            var datas = {
              "profileId": sessionId,
              "skuId": sku_id
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
                  clicked.setAttribute("style", "color:red;");

                }
                else if (response.status_Message == "item exist") {
                  alert("item removed from your wishlist");
                  clicked.setAttribute("style", "color:blue;");
                }
                else {
                  alert("try again");
                }
              }
            });


          }
        }
      }
    });
  });
}



$(document).ready(function () {

  var priceRange = document.getElementsByClassName("js-range-slider")[0].value.split(';')
  var min = priceRange[0];
  var max = priceRange[1];
  productList(min, max);
});

function filter() {
  var priceRange = document.getElementsByClassName("js-range-slider")[0].value.split(';')
  var min = priceRange[0];
  var max = priceRange[1];
  document.getElementById('products').innerHTML = ''
  productList(min, max);

}

function stock(id, stat) {


  $.ajax({
    async: false,
    type: "GET",

    url: "http://localhost:8083/items/" + id,

    success: function (r) {

      switch (stat) {
        case 1: if (r.stock.state.stateType == "GREEN") {
          sale_status1 = "On stock";
        } else if (r.stock.state.stateType == "RED") {
          sale_status1 = "Out of Stock";
        }
        else {
          console.log("else");
        }

        case 2: if (r.stock.state.stateType == "GREEN") {
          sale_status2 = "On stock";
        } else if (r.stock.state.stateType == "RED") {
          sale_status2 = "Out of Stock";
        }
        else {
          console.log("else");
        }
        case 3: if (r.stock.state.stateType == "GREEN") {
          sale_status3 = "On stock";
        } else if (r.stock.state.stateType == "RED") {
          sale_status3 = "Out of Stock";
        }
        else {
          console.log("else");
        }

      }

    }
  });

}
