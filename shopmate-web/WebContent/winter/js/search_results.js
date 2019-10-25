$(document).ready(function () {
    
    let searchParams = new URLSearchParams(window.location.search);
    let param = searchParams.get('q');
    let itemName = param.split('+').join(' ');

    $("#search-query").append(itemName);

    let first = true;
   
    $.ajax({
        type: "GET",
        url: `http://localhost:8083/items/search/${itemName}`,
       
        success: function (responseFromSearchEngine) {

            responseFromSearchEngine.forEach(element => {
                
                $.ajax({
                    type: "GET",
                    url: `http://localhost:8082/sku/latest/${element.skuId}`,
                   
                    success: function (responseFromCatalog) {


                        let baseTemplate = `
                        
                        <div class="search-result-item"> <a href="single-product.html?${element.skuId}">
                          <div class="search-result-image"><img src="${responseFromCatalog.skuImage}"/></div>
                          <div class="search-result-label">
                            <span class="search-result-title">${element.skuName}</span><br>
                            <span class="search-result-price">₹ ${responseFromCatalog.skuPrice}</span>
                          
                          </div>
                          </a>
                        </div>
                        <div class="search-result-item"></div>
                        
                        `;

                       // console.log(baseTemplate)
                       $("#results-container").append(baseTemplate);
                        console.log(baseTemplate)
                      
                    }
                   
                });

               

            });
            
        }
    });

});