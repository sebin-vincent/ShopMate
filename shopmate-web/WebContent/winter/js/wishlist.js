$(document).ready(function () {


    var skuPrice, skuImage, skuName;
    var index = 0;
    //TODO retrieve from session - userId
    //TODO add to cart callback url
    //TODO work with ordering stuff
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/wishlist/4/retrieve", //TODO replace 1234 with profile id

        success: function (responseFromProfile) {


            for (let index = 0; index < responseFromProfile.payload[0].length; index++) {

                console.log(responseFromProfile.payload[0][index]);
                $.ajax({
                    type: "GET",
                    url: `http://localhost:8082/sku/latest/${responseFromProfile.payload[0][index]}`,

                    success: function (responseFromCatalog) {

                        // index = index + 1;
                        skuPrice = responseFromCatalog.skuPrice;
                        // console.log(skuPrice);
                        skuImage = responseFromCatalog.skuImage;
                         console.log(skuImage)

                        //  $.ajax({
                        //     type: "GET",
                        //     url: `http://localhost:8083/items/${responseFromProfile.payload[0][index]}/name`,
        
                        //     success: function (responseFromInventory) {
        
                        //         skuName = responseFromInventory.payload;
                        //         // console.log(skuName);
        
                        //         var baseTemplate = `
        
                        //                 <div class="wish-list-item">
                        //                 <div class="wish-list-image-container"><img src="${responseFromCatalog.skuImage}" alt="${responseFromInventory.payload}"/>
        
                        //                 </div>
        
                        //                 <div class="wish-list-item-title">${responseFromInventory.payload}<br>
        
                        //                 <span class="span-price">₹ ${responseFromCatalog.skuPrice}</span>
        
                        //                 <div class="interaction-section">
                        //                 <button class="cart-btn"><i class="fa fa-shopping-cart"></i>    Add to Cart</button>    
                        //                 </div>
                        //                 </div>
        
        
                        //                 </div>
        
                        //             </div>
        
                        //                 `;
        
                        //         //console.log(baseTemplate);
                        //         // console.log(skuPrice);
        
                        //         $("#wish-list-parent").append(baseTemplate);
        
                        //     }
        
                        // });


                        $.ajax({
                            type: "GET",
                            url: `http://localhost:8083/items/${responseFromProfile.payload[0][index]}/name`,

                            success: function (responseFromInventory) {

                                skuName = responseFromInventory.payload;
                                // console.log(skuName);
                                console.log(`${skuName} = ${responseFromCatalog.skuPrice}`);

                                var baseTemplate = `
        
                                        <div class="wish-list-item">
                                        <div class="wish-list-image-container"><img src="${responseFromCatalog.skuImage}" alt="${responseFromInventory.payload}"/>
        
                                        </div>
        
                                        <div class="wish-list-item-title">${responseFromInventory.payload}<br>
        
                                        <span class="span-price">₹ ${responseFromCatalog.skuPrice}</span>
        
                                        <div class="interaction-section">
                                        <button class="cart-btn"><i class="fa fa-shopping-cart"></i>    Add to Cart</button>    
                                        </div>
                                        </div>
        
        
                                        </div>
        
                                    </div>
        
                                        `;

                                //console.log(baseTemplate);
                                // console.log(skuPrice);

                                $("#wish-list-parent").append(baseTemplate);

                            }

                        });

                    }
                });

            }

        }
    });

});