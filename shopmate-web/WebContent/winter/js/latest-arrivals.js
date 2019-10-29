$(document).ready(function () {
    
    $.ajax({
        type: "GET",
        url: "http://localhost:8083/items/latest-arrivals/6",
    
        success: function (responseFromInventory) {

            responseFromInventory.payload.forEach(element => {
                
                $.ajax({
                    type: "GET",
                    url: "http://localhost:8082/sku/latest/" + element.skuId,
                   
                    success: function (responseFromCatalog) {

                        var baseTemplate = `

                        <div class="latest-arrived-item">
                        <a href="winter/templates/single-product.html?${element.skuId}"> <img src="${responseFromCatalog.skuImage}" alt="${element.skuName}"> </a>
                        <div class="latest-arrived-item-text">${element.skuName}</div>
                        </div>

                        `;

                        $("#latest-arrivals-cont").append(baseTemplate);
                        
                    }
                });

            });
            
        }
    });

});
