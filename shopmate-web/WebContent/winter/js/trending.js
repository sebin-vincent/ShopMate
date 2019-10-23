$(document).ready(function () {

    $.ajax({
        type: "GET",
        url: "http://localhost:8084/order/trending/3",

        success: function (responseFromOrder) {

            responseFromOrder.payload.forEach(element => {
                // console.log(element.skuId);

                $.ajax({
                    type: "GET",
                    url: `http://localhost:8083/items/${element.skuId}/name`,

                    success: function (responseFromInventory) {


                        $.ajax({
                            type: "GET",
                            url: `http://localhost:8082/sku/latest/${element.skuId}`,

                            success: function (responseFromCatalog) {

                                var baseTemplate = `

                                <div class="latest-arrived-item">
                                <a href="#"> <img src="${responseFromCatalog.skuImage}" alt="${responseFromInventory.payload}"> </a>
                                <div class="latest-arrived-item-text">${responseFromInventory.payload}</div>
                                </div>
        
                                `;

                                $("#trending-container-parent").append(baseTemplate);
                                //console.log(baseTemplate);

                            }
                        });


                    }
                });


            });

        }
    });

});