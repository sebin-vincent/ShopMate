


$(document).ready(function () {

  $.ajax({
    type: "GET",
    url: "http://localhost:8082/catalog",

    success: function (response) {
      for (var i = 0; i < response.payload.length; i++) {
        var subCategory=''
        var CategotyName = `
        
                <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                ${response.payload[i].categoryName}
                </a>
                `

                var divTag = document.createElement("div");
                divTag.setAttribute("class","dropdown-menu")
                divTag.setAttribute("navbarDropdown_1","navbarDropdown_1")
                 

        for (var j = 0; j < response.payload[i].subCategoryProducts.length; j++) {
          var subUlTag = document.createElement("ul")
          
          var subDivTag = document.createElement("div")
          
          subDivTag.setAttribute("class","category-products")
          subDivTag.setAttribute("style","margin-left: 35px;")
          
          var aTag = document.createElement("a")
          aTag.setAttribute("class","dropdown-item")
         // aTag.setAttribute("href","category.html")
          
          var hTag = document.createElement("h5")
          
          var subCategoryName = `  ${response.payload[i].subCategoryProducts[j].subCategory}`
          //subCategory = subCategory.concat(subCategotyName);
          hTag.append(subCategoryName)
          aTag.appendChild(hTag)
          aTag.appendChild(subDivTag)
           subDivTag.appendChild(subUlTag)
           
          for (let k = 0; k < response.payload[i].subCategoryProducts[j].products.length; k++) {
            var product = `  ${response.payload[i].subCategoryProducts[j].products[k].productName}`
            var productId= `category.html?${response.payload[i].subCategoryProducts[j].products[k].productId}`
            console.log(productId)
            var subLiTag = document.createElement("li")
            var subATag = document.createElement("a")
            subATag.setAttribute("href",productId)
            subATag.setAttribute("style","text-decoration : none; color : #fff;")

            subLiTag.appendChild(subATag)
            subATag.innerHTML= product
            subUlTag.appendChild(subLiTag)
            aTag.appendChild(subUlTag)
            
          }
          divTag.appendChild(aTag);
          
          
          
        
          
          
          
        }
        
        var liTag = document.createElement("li");
        liTag.setAttribute("class","nav-item dropdown")
        liTag.innerHTML=CategotyName
        
        
        liTag.appendChild(divTag);
        
        
        $(liTag).appendTo(document.getElementById("temp"));
      //console.log(liTag)
       
        
        

       









      }


    }
  });
});

