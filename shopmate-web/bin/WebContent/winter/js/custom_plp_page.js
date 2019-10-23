//api call
/*
var parsedJson=new XMLHttpRequest();
var url = "http://localhost:8080/getSingleKu";
// Called whenever the readyState attribute changes 
parsedJson.onload = function() {

    // Check if fetch request is done
    if (parsedJson.readyState == 4 && parsedJson.status == 200) { 
    
      // Parse the JSON string
      var jsonData = JSON.parse(parsedJson.responseText);
      
      // Call the showArtists(), passing in the parsed JSON string
      showArtists(jsonData);
    }
  };
  
  // Do the HTTP call using the url variable we specified above
 parsedJson.open("GET", url, true);
  parsedJson.send();
  
*/

//Json
const parsedJson={
    url:"../img/product_details/prodect_details_1.png",
    item_name:'Faded SkyBlu Denim Jeans',
    item_description:"Mill Oil is an innovative oil filled radiator with the most modern technology. If you are looking for something that can make your interior look awesome, and at the same time.",
    price:149.99,
    active_status:0,
    category_name:"fashion"
}
var similar_product = '{ "products" : [' +
'{"sku_id":1, "product_name":"long sleeve shirt" , "price":23 ,"img_url":"../img/category/category_2.png"},' +
'{ "sku_id":2, "product_name":"skirt" , "price":45 ,"img_url":"../img/category/category_2.png"},' +
'{ "sku_id":3, "product_name":"frok" , "price":34 ,"img_url":"../img/category/category_2.png" },' +
'{ "sku_id":4, "product_name":"Jean" , "price":25 ,"img_url":"../img/category/category_2.png" } ]}'

//parsing
var obj = JSON.parse(similar_product)
console.log(obj.products[0].sku_id)
//const std=JSON.stringify(student)
//const  parsedJson=JSON.parse(std)
console.log(parsedJson.url)
if(parsedJson.active_status==1){
    parsedJson.active_status="In Stock"
}
else if(parsedJson.active_status==0){
    parsedJson.active_status="Out of stock"

}
else{
    parsedJson.active_status="hurry only few left"
}

var product=function(){
    var img1=document.getElementById("img1");
    var img2=document.getElementById("img2");
    var img3=document.getElementById("img3");
    var img4=document.getElementById("img4");

    img1.innerHTML=' <img src='+parsedJson.item_name+' alt="">   <div class="category_social_icon">        <ul> <li><a href="#"><i class="ti-heart"></i></a></li>           <li><a href="#"><i class="ti-bag"></i></a></li>         </ul>    </div>    <div class="category_product_text" id="similar_product1">   </div>'
    img2.innerHTML=' <img src="../img/category/category_2.png" alt="">   <div class="category_social_icon">        <ul> <li><a href="#"><i class="ti-heart"></i></a></li>           <li><a href="#"><i class="ti-bag"></i></a></li>         </ul>    </div>    <div class="category_product_text" id="similar_product1">   </div>'
    //img3.innerHTML=' <img src="../img/category/category_2.png" alt="">   <div class="category_social_icon">        <ul> <li><a href="#"><i class="ti-heart"></i></a></li>           <li><a href="#"><i class="ti-bag"></i></a></li>         </ul>    </div>    <div class="category_product_text" id="similar_product1">   </div>'
    img4.innerHTML=' <img src="../img/category/category_2.png" alt="">   <div class="category_social_icon">        <ul> <li><a href="#"><i class="ti-heart"></i></a></li>           <li><a href="#"><i class="ti-bag"></i></a></li>         </ul>    </div>    <div class="category_product_text" id="similar_product1">   </div>'
    

    
    var product_feature=document.getElementById("product_feature");
    product_feature.innerHTML='<h3>'+parsedJson.item_name+'</h3><h2>$'+parsedJson.price+'</h2><ul class="list"> <li><a class="active" href="#"><span>Category</span> : '+parsedJson.category_name+'</a>  </li>  <li> <a href="#"> <span>Availibility</span> : '+parsedJson.active_status+'</a>    </li> </ul> <p>  Mill Oil is an innovative oil filled radiator with the most modern technology. If you are looking for something that can make your interior look awesome, and at the same time.  </p>  <div class="card_area">    <div class="product_count d-inline-block">      <span class="inumber-decrement"> <i class="ti-minus"></i></span>      <input class="input-number" type="text" value="1" min="0" max="10">      <span class="number-increment"> <i class="ti-plus"></i></span>    </div>    <div class="add_to_cart">        <a href="#" class="btn_3">add to cart</a>        <a href="#" class="like_us"> <i class="ti-heart"></i> </a>    </div>    <div class="social_icon">        <a href="#" class="fb"><i class="ti-facebook"></i></a>        <a href="#" class="tw"><i class="ti-twitter-alt"></i></a>        <a href="#" class="li"><i class="ti-linkedin"></i></a>    </div>  </div></div></div>';

    var product_feature=document.getElementById("product_feature");
    product_feature.innerHTML='<h3>'+parsedJson.item_name+'</h3><h2>$'+parsedJson.price+'</h2><ul class="list"> <li><a class="active" href="#"><span>Category</span> : '+parsedJson.category_name+'</a>  </li>  <li> <a href="#"> <span>Availibility</span> : '+parsedJson.active_status+'</a>    </li> </ul> <p>  Mill Oil is an innovative oil filled radiator with the most modern technology. If you are looking for something that can make your interior look awesome, and at the same time.  </p>  <div class="card_area">    <div class="product_count d-inline-block">      <span class="inumber-decrement"> <i class="ti-minus"></i></span>      <input class="input-number" type="text" value="1" min="0" max="10">      <span class="number-increment"> <i class="ti-plus"></i></span>    </div>    <div class="add_to_cart">        <a href="#" class="btn_3">add to cart</a>        <a href="#" class="like_us"> <i class="ti-heart"></i> </a>    </div>    <div class="social_icon">        <a href="#" class="fb"><i class="ti-facebook"></i></a>        <a href="#" class="tw"><i class="ti-twitter-alt"></i></a>        <a href="#" class="li"><i class="ti-linkedin"></i></a>    </div>  </div></div></div>';

    var product_img=document.getElementById("product");
    product_img.innerHTML='<div data-thumb="img/product_details/prodect_details_1.png"><img src='+parsedJson.url+' /></div>';
    
    var similar_product1=document.getElementById("similar_product1");
    var similar_product2=document.getElementById("similar_product2");
    var similar_product3=document.getElementById("similar_product3");
    var similar_product4=document.getElementById("similar_product4");

    similar_product1.innerHTML='<a href="single-product.html"><h5>'+obj.products[0].product_name+'</h5></a>    <p>$'+obj.products[0].price+'</p>';
    //similar_product2.innerHTML='<a href="single-product.html"><h5>'+obj.products[1].product_name+'</h5></a>    <p>$'+obj.products[1].price+'</p>';
    similar_product3.innerHTML='<a href="single-product.html"><h5>'+obj.products[2].product_name+'</h5></a>    <p>$'+obj.products[2].price+'</p>';
    similar_product4.innerHTML='<a href="single-product.html"><h5>'+obj.products[3].product_name+'</h5></a>    <p>$'+obj.products[3].price+'</p>';
    
    }
product();

