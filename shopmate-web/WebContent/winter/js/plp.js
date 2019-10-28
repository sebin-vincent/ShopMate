
var sale_status1 = " "
var sale_status2;
var sale_status3;
var status;
var sessionId = sessionStorage.getItem("profile_id");

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
    url: "http://localhost:8080/wishlist/4/retrieve",
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

      for (var i = 0; i < (response.payload.length - 2); (i = i + 3)) {
        stock(`${response.payload[i].skuId}`, 1);
        stock(`${response.payload[i + 1].skuId}`, 2);
        stock(`${response.payload[i + 2].skuId}`, 3);

        $parent.append(`
<div class="row">
  <div class="colum" style="float: left;  width: 33.33%;  padding: 5px; padding-right: 70px;padding-bottom: 74px;     position: relative;">
  <a href="single-product.html?${response.payload[i].skuId}">
    <img src="${response.payload[i].imageUrl}" id="image_${response.payload[i].skuId}" alt="Snow" style="width:100%;position: relative;">
    
      <ul>  
        <li>
          <a  class="like_us" id="wish-list-button_${i}"> 
          <i class="fa fa-heart" id="wish_${response.payload[i].skuId}" style="color:blue" >
          </i>
          </a>
        </li>
        <li>
          <h5 style="margin-left: 40px;">${response.payload[i].skuName}</h5>
          <h4 style="margin-left: 40px;"><b>${sale_status1}</b></h4>
        </li>
        <li>
          <p style="margin-left: 40px;">$${response.payload[i].listPrice}</p>
      </ul>
    </a>  
    
  </div>


  <div class="colum" style="float: left;  width: 33.33%;  padding: 5px; padding-right: 70px;padding-bottom: 74px;     position: relative;">
  <a href="single-product.html?${response.payload[i + 1].skuId}">
    <img src="${response.payload[i + 1].imageUrl}" id="image_${response.payload[i + 1].skuId}" alt="Snow" style="width:100%;position: relative;">
    
      <ul>  
        <li>
          <a  class="like_us" id="wish-list-button_${i + 1}"> 
          <i class="fa fa-heart" id="wish_${response.payload[i + 1].skuId}" style="color:blue" >
          </i>
          </a>
        </li>
        <li>
          <h5 style="margin-left: 40px;">${response.payload[i + 1].skuName}</h5>
          <h4 style="margin-left: 40px;"><b>${sale_status2}</b></h4>
        </li>
        <li>
          <p style="margin-left: 40px;">$${response.payload[i + 1].listPrice}</p>
      </ul>
    </a>  
    
  </div>


  <div class="colum" style="float: left;  width: 33.33%;  padding: 5px; padding-right: 70px;padding-bottom: 74px;     position: relative;">
  <a href="single-product.html?${response.payload[i + 2].skuId}">
    <img src="${response.payload[i + 2].imageUrl}" id="image_${response.payload[i + 2].skuId}" alt="Snow" style="width:100%">
    
      <ul>  
        <li>
          <a  class="like_us" id="wish-list-button_${i + 2}"> 
          <i class="fa fa-heart" id="wish_${response.payload[i + 2].skuId}" style="color:blue;position: relative;" >
          </i>
          </a>
        </li>
        <li>
          <h5 style="margin-left: 40px;">${response.payload[i + 2].skuName}</h5>
          <h4 style="margin-left: 40px;"><b>${sale_status3}</b></h4>
        </li>
        <li>
          <p style="margin-left: 40px;">$${response.payload[i + 2].listPrice}</p>
      </ul>
    </a>  
    
  </div>
        
        
        `);
        var image1 = `image_${response.payload[i].skuId}`
        var img1 = document.getElementById(image1);


        var image2 = `image_${response.payload[i + 1].skuId}`
        var img2 = document.getElementById(image2);


        var image3 = `image_${response.payload[i + 2].skuId}`
        var img3 = document.getElementById(image3);

        if (sale_status1 == "Out of Stock") {
          img1.setAttribute("style", "opacity: 0.4");
        }
        if (sale_status2 == "Out of Stock") {
          img2.setAttribute("style", "opacity: 0.4");
        }
        if (sale_status3 == "Out of Stock") {
          img3.setAttribute("style", "opacity: 0.4");
        }
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

      for (var j = 0; j < response.payload.length; j++) {
        var wish_icon = document.getElementById("wish_" + response.payload[j].skuId);
        for (var i = 0; i < skulist.length; i++) {
          if (response.payload[j].skuId == skulist[i]) {
            wish_icon.setAttribute("style", "color:red;");

          }
        }
      }
      var wish_button = document.getElementsByClassName('fa fa-heart');
      for (var i = 0; i < wish_button.length; i++) {
        var input_i = wish_button[i];
        input_i.addEventListener('click', wishList);
      }


      function wishList(event) {
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
              alert("item removed from your cart");
              clicked.setAttribute("style", "color:blue;");
            }
            else {
              alert("try again");
            }
          }
        });


      }
    }
  });
});
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
