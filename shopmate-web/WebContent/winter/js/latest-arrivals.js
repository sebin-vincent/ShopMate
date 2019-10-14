$(document).ready(function () {
    
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/items/latest-arrivals/20",
    
        success: function (responseFromInventory) {

            responseFromInventory.payload.forEach(element => {
                
                $.ajax({
                    type: "GET",
                    url: "http://localhost:8081/sku/latest/" + element.skuId,
                   
                    success: function (responseFromCatalog) {

                        var baseTemplate = `

                        <div class="latest-arrived-item">
                        <a href="${element.skuPDPUrl}"> <img src="${responseFromCatalog.skuImage}" alt="${element.skuName}"> </a>
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
