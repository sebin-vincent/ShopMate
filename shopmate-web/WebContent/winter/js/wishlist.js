$(document).ready(function () {


    var skuPrice, skuImage, skuName;
    var index = 0;
    //TODO retrieve from session - userId
    //TODO add to cart callback url
    //TODO work with ordering stuff
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/wishlist/1234/retrieve",

        success: function (responseFromProfile) {

            // ++index;
            // responseFromProfile.payload[0][index].forEach(element => {


            //     console.log(index);
            //     $.ajax({
            //         type: "GET",
            //         url: `http://localhost:8082/sku/latest/${element[index]}`,

            //         success: function (responseFromCatalog) {

            //             index = index + 1;
            //             skuPrice = responseFromCatalog.skuPrice;
            //             // console.log(skuPrice);
            //             skuImage = responseFromCatalog.skuImage;
            //             //  console.log(skuImage)

            //         }
            //     });

            //     $.ajax({
            //         type: "GET",
            //         url: `http://localhost:8080/items/${element[index]}/name`,

            //         success: function (responseFromInventory) {

            //             skuName = responseFromInventory.payload;
            //             // console.log(skuName);

            //             var baseTemplate = `

            //             <div class="wish-list-item">
            //             <div class="wish-list-image-container"><img src="${skuImage}" alt="${skuName}"/>

            //             </div>

            //             <div class="wish-list-item-title">${skuName}<br>

            //             <span class="span-price">${skuPrice}</span>

            //             <div class="interaction-section">
            //             <button class="cart-btn"><i class="fa fa-shopping-cart"></i>    Add to Cart</button>    
            //             </div>
            //             </div>


            //             </div>

            //         </div>

            //             `;

            //             //console.log(baseTemplate);
            //             // console.log(skuPrice);

            //             $("#wish-list-parent").append(baseTemplate);

            //         }

            //     });

            //     // console.log(skuName);
            //     // console.log(element[index]);


            // });//

            for (let index = 0; index < responseFromProfile.payload[0].length; index++) {

                //console.log(responseFromProfile.payload[0][index]);
                $.ajax({
                    type: "GET",
                    url: `http://localhost:8082/sku/latest/${responseFromProfile.payload[0][index]}`,

                    success: function (responseFromCatalog) {

                        index = index + 1;
                        skuPrice = responseFromCatalog.skuPrice;
                        // console.log(skuPrice);
                        skuImage = responseFromCatalog.skuImage;
                        //  console.log(skuImage)

                    }
                });


                $.ajax({
                    type: "GET",
                    url: `http://localhost:8080/items/${responseFromProfile.payload[0][index]}/name`,

                    success: function (responseFromInventory) {

                        skuName = responseFromInventory.payload;
                        // console.log(skuName);

                        var baseTemplate = `

                                <div class="wish-list-item">
                                <div class="wish-list-image-container"><img src="${skuImage}" alt="${skuName}"/>

                                </div>

                                <div class="wish-list-item-title">${skuName}<br>

                                <span class="span-price">₹ ${skuPrice}</span>

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

        }
    });

});