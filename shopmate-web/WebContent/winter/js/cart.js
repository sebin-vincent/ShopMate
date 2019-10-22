$(document).ready(function () {
    
    
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/order/cart/1001/1",
        success: function (response) {
            
            
            for (let i = 0; i < response.payload[0].item.length; i++)      
            {        var skuName;
                
                           var trTag= document.createElement("tr")
                           trTag.setAttribute("class","cart-row")
                            var tdTag1=document.createElement("td")
                            var tdTag2=document.createElement("td")
                            tdTag2.setAttribute("class","item-price")
                            var tdTag3=document.createElement("td")
                            var tdTag4=document.createElement("td")
                            var tdTag5 = document.createElement("td")
                           
            
                          
                          

                           
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
                            
                            
                            divTag2.innerHTML="<img src='../img/arrivel/arrivel_1.png ' alt=''>" 
                            divTag3.innerHTML=`<p>${response.payload[0].item[i].skuId}</p>`
                            tdTag2.innerHTML=`<h5>${response.payload[0].item[i].unitPrice}</h5>`
                           
                            var itemPrice = `${response.payload[0].item[i].unitPrice}`
                            
                           subDivTag.innerHTML=`<div class="cart-quantity cart-column">
                           <input class="cart-quantity-input" type="number" value="${response.payload[0].item[i].quantity}">
                           <button class="btn btn-danger" type="button">REMOVE</button>
                       </div>`
                            var temp = subDivTag.getElementsByClassName("cart-quantity-input")[0]
                            var quan = (temp.value)*itemPrice
                          //console.log(quan)
                           tdTag4.innerHTML=`<h5> ${quan} </h5>`
                            trTag.appendChild(tdTag1);
                            trTag.appendChild(tdTag2);
                            trTag.appendChild(tdTag3);
                            trTag.appendChild(tdTag4);

                           
                           $(trTag).prependTo(document.getElementById("cart-item"));
                           
                            //console.log(trTag);

            
                        
            }
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
                //console.log(cartRows)
                var total=0
                for (let k = 0; k < cartRows.length; k++) {
                    var cartRow = cartRows[k]
                    var priceElement= cartRow.getElementsByClassName("item-price")[0]
                    var quantityElement= cartRow.getElementsByClassName("cart-quantity-input")[0]
                    var  price = parseFloat(priceElement.innerText)
                    var quantity = quantityElement.value
                    total = total + (price*quantity)
                    
                    
                }
                //$(total).appendTo(document.getElementById("subtotal"));
                document.getElementById("subtotal").innerHTML=`${total}`
            }

          

        }
    });
});


