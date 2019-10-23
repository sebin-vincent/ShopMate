$(function(){
    var url      = window.location.href;
    //var url = $(location).attr('href')
    parts = url.split("?");
    last_part = parts[parts.length-1];
    console.log(last_part);
    //var $parent =$('.col-lg-12')
    var $parent =$('#products')
    console.log($parent)
    $.ajax({
        type: "GET",
        url: "http://localhost:8082/sku/"+last_part,
        success: function (response) {
            // $.each(response.payload, function (indexInArray, payload ) { 
            //     $parent.append(`<div class="row">   <div class="column">  <img src="${response.payload[0].imageUrl}" alt="Snow" style="width:100%">              <div class="category_social_icon">  <ul>  <li><a href="#"><i class="ti-heart"></i></a></li>   <li><a href="#"><i class="ti-bag"></i></a></li>   </ul><a href="single-product.html"><h5 style="margin-left: 40px;">${response.payload[0].skuName}</h5></a>              </div>  <p style="margin-left: 69px;">$${response.payload[0].listPrice}</p>          </div> </div>`);
                  
            // });
            for(var i=0;i<response.payload.length;i++){
                $parent.append(`<div class="row">   <div class="column" >  
                <img src="${response.payload[i].imageUrl}" alt="Snow" style="width:185px;height:350px">
                              <div class="category_social_icon">  <ul>  <li><a href="#">
                              <i class="ti-heart"></i></a></li>   <li><a href="#"><i class="ti-bag">
                              </i></a></li>   </ul>
                              <a href="single-product.html?${response.payload[i].skuId}">
                                <h5 style="margin-left: 40px;">${response.payload[i].skuName}</h5></a>  
                                </div>  <p style="margin-left: 69px;">$${response.payload[0].listPrice}</p>
                                  </div> </div>`);
            }
            console.log(response.payload[0]);
             
        }
    });
});