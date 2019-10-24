$(function(){
    var url      = window.location.href;
    //var url = $(location).attr('href')
    parts = url.split("?");
    last_part = parts[parts.length-1];
    
    //var $parent =$('.col-lg-12')
    var $parent =$('#products')
    var skulist=[];
    $.ajax({
      async:false,
      type: "GET",
      dataType: "json",
      url: "http://localhost:8080/wishlist/4/retrieve",
    
      
      success: function (response) {
        for(var i=0;i<response.payload[0].length;i++){
          skulist.push(response.payload[0][i]);
          
        }
      }
      
    });
    $.ajax({
        type: "GET",
        url: "http://localhost:8082/sku/"+last_part,
        success: function (response) {
            // $.each(response.payload, function (indexInArray, payload ) { 
            //     $parent.append(`<div class="row">   <div class="column">  <img src="${response.payload[0].imageUrl}" alt="Snow" style="width:100%">              <div class="category_social_icon">  <ul>  <li><a href="#"><i class="ti-heart"></i></a></li>   <li><a href="#"><i class="ti-bag"></i></a></li>   </ul><a href="single-product.html"><h5 style="margin-left: 40px;">${response.payload[0].skuName}</h5></a>              </div>  <p style="margin-left: 69px;">$${response.payload[0].listPrice}</p>          </div> </div>`);
                  
            // });
            console.log(response);
            for(var i=0;i<response.payload.length;i++){
                $parent.append(`<div class="row">  
                 <div class="column" >  
                    <a href="single-product.html?${response.payload[i].skuId}">
                    <img src="${response.payload[i].imageUrl}" alt="Snow" style="width:185px;height:350px">
                              <div class="category_social_icon">  <ul>  <li><a href="#" class="like_us" id="wish-list-button"> 
                              <i class="fa fa-heart" id="wish" ></i></a></li>   </a></li>   </ul>
                              
                                <h5 style="margin-left: 40px;">${response.payload[i].skuName}</h5></a>  
                                </div>  <p style="margin-left: 69px;">$${response.payload[0].listPrice}</p>
                                  </div> </div>`);
            }
            var wish_icon=document.getElementById("wish");
     for(var i=0;i<skulist.length;i++){
       if(skulist[i]==response.payload[0].skuId){
         wish_icon.setAttribute("style","color:red;");
       }    
     }
     $("#wish-list-button").click(function (e) { 
        e.preventDefault();
        var wish_icon=document.getElementById("wish");
        console.log(wish_icon);
        var datas={
          "profileId":4,
            "skuId":last_part
        }
        $.ajax({
          async:false,
          type: "POST",
          contentType: "application/json",
          dataType: "json",
          url: "http://localhost:8080/wishlist/add",
          data: JSON.stringify(datas),
          success: function (response) {
            if(response.status_Message=="item added"){
              alert("Item added to your wish list");
              wish_icon.setAttribute("style","color:red;");
            
            }
            else if(response.status_Message=="item exist"){
              alert("item revoved from your cart");
              wish_icon.setAttribute("style","color:blue;");
            }
            else{
              alert("try again");
            }
          }
        });
        
      });

        }
    });
});