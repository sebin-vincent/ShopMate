var slideIndex = 1;

var myTimer;

var slideshowContainer;

var imagesSRC = [];

var sku=[];





$(document).ready(function () {


  $(".imgSEQ_NUM").hide();

 

  $.ajax({
    url: "http://localhost:8082/sliderimages",

    success: function (result) {
     // console.log(result);
      for (i = 0; i < result.length; i++) {
        imagesSRC.push(result[i].image_url)
        //pdp_url.push(result[i].pdp_url)
        sku.push(result[i].sku_id);
      }
      //console.log(imagesSRC)
    }
  });
});










$(window).on('load', function () {

  showSlides(slideIndex);
  myTimer = setInterval(function () { plusSlides(1) }, 4000);


  slideshowContainer = document.getElementById('container');
  //slideshowContainer.addEventListener('mouseenter', pause)
  //slideshowContainer.addEventListener('mouseleave', resume)



})

// NEXT AND PREVIOUS CONTROL
function plusSlides(n) {
    clearInterval(myTimer);
  if (n < 0) {
    showSlides(slideIndex -= 1);
  } else {
    showSlides(slideIndex += 1);
  }



  if (n === -1) {
    myTimer = setInterval(function () { plusSlides(n + 2) }, 4000);
  } else {
    myTimer = setInterval(function () { plusSlides(n + 1) }, 4000);
  }
}


function showSlides(n) {
  
  var slides = document.getElementsByClassName("mySlides");

  if (n > imagesSRC.length) { slideIndex = 1 }
  if (n < 1) { slideIndex = imagesSRC.length }

  document.getElementById('imgSEQ_NUM').src = imagesSRC[slideIndex - 1];
  document.getElementById('pdplink').href="winter/templates/single-product.html?"+sku[slideIndex-1];
  
  if ($(".imgSEQ_NUM").is(":hidden")) {
    $(".imgSEQ_NUM").show();
  }


}

// pause = () => {
//   clearInterval(myTimer);
// }

// resume = () => {
//   clearInterval(myTimer);
//   myTimer = setInterval(function () { plusSlides(slideIndex) }, 4000);
// }





