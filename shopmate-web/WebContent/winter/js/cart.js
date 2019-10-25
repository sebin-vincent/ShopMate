$(document).ready(function () {
    var sessionId= sessionStorage.getItem("profile_id"); 
   var urlOriginal="http://localhost:8084/order/cart/"+sessionId+"/1"
//    console.log(urlOriginal);
    $.ajax({
    
        type: "GET",
        url: urlOriginal, //Todo get profile id from session 
        
        success: function (response) {
            
            var items = response.payload[0].item
            for (let m = 0; m < items.length; m++) {
                
                
            
            var skuId= items[m].skuId
            var url = "http://localhost:8082/sku/details/"+skuId


            $.ajax({
                type: "GET",
                url: url,
                success: function (response) {
                        
                         
            
                
               

                           var trTag= document.createElement("tr")
                           trTag.setAttribute("class","cart-row")
                            var tdTag1=document.createElement("td")
                            var tdTag2=document.createElement("td")
                            tdTag2.setAttribute("class","item-price")
                            var tdTag3=document.createElement("td")
                            var tdTag4=document.createElement("td")
                            tdTag4.setAttribute("class","total")
                            //var tdTag5 = document.createElement("td")
                           
            
                          
               
                            var divTag1=document.createElement("div")
                            divTag1.setAttribute("class","media")
                            
                            var divTag2 =document.createElement("div")
                            divTag2.setAttribute("class","d-flex")
                            
                            var divTag3 =document.createElement("div")
                            divTag3.setAttribute("class","media-body") 

                            var subDivTag = document.createElement("div")
                            subDivTag.setAttribute("class","product_count")
                            
                                                   
                            
                            divTag1.appendChild(divTag2);
                            divTag1.appendChild(divTag3);
                            
                            tdTag1.appendChild(divTag1)
                            tdTag3.appendChild(subDivTag);
                            
                            
                            divTag2.innerHTML=`<img src='${response.imageUrl} ' alt=''>` 
                           
                            tdTag2.innerHTML=`<h5>${items[m].unitPrice}</h5>`
                            divTag3.innerHTML=`<p id="item-name">${response.skuName}</p>`

                           
                            var itemPrice = `${items[m].unitPrice}`
                            
                           subDivTag.innerHTML=`<div class="cart-quantity cart-column">
                           <input class="cart-quantity-input" type="number" value="${items[m].quantity}">
                           <button class="btn btn-danger" type="button">REMOVE</button>
                       </div>`
                            var temp = subDivTag.getElementsByClassName("cart-quantity-input")[0]
                            var quan = (temp.value)*itemPrice
                          
                           //tdTag4.innerHTML=`<h5> ${quan} </h5>`
                            trTag.appendChild(tdTag1);
                            trTag.appendChild(tdTag2);
                            trTag.appendChild(tdTag3);
                            trTag.appendChild(tdTag4);

                            
                           $(trTag).prependTo(document.getElementById("cart-item"));
                           
                           

            
                        
            
            subTotal()

            var removeCartItem = document.getElementsByClassName('btn-danger')
            var quantityInputs = document.getElementsByClassName("cart-quantity-input ")
            
            for (let i = 0; i < quantityInputs.length; i++) {
               var input = quantityInputs[i]
               input.addEventListener('change',quantityChanged)
                
            }
            for (let j = 0; j < removeCartItem.length; j++){

                var button  = removeCartItem[j]
                button.addEventListener('click',removeItem)
                     
            }

            function quantityChanged(event){
                var input = event.target
                if(isNaN(input.value)|| input.value<=0){
                    input.value=1
                }
                subTotal()

            }
           
            function removeItem(event){
                var buttonClicked = event.target
                    buttonClicked.parentElement.parentElement.parentElement.parentElement.remove()
                   subTotal()
            }

            function subTotal() {

                var cartItems = document.getElementById("cart-item")
                
                var cartRows = cartItems.getElementsByClassName("cart-row")
                
                var subtotal=0
                for (let k = 0; k < cartRows.length; k++) {
                    var cartRow = cartRows[k]
                    var priceElement= cartRow.getElementsByClassName("item-price")[0]
                    
                    var quantityElement= cartRow.getElementsByClassName("cart-quantity-input")[0]

                    var  price = parseFloat(priceElement.innerText)
                    var quantity = quantityElement.value
                    var total = price * quantity
                    document.getElementsByClassName("total")[k].innerHTML=`<h5> ${total}</h5>`
                   
                    
                    subtotal = subtotal + (price*quantity)
                    
                    
                }
                
                document.getElementById("subtotal").innerHTML=`${subtotal}`
            }          

        
                }
            });

            
            }
           
            }
    });
});


