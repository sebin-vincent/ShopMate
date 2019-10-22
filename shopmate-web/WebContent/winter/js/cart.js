$(document).ready(function () {
    var $count=$("#count");
    console.log($count);
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/order/cart/1001/1",
        success: function (response) {
            
            var price = document.getElementById("price");
           
            //price.innerHTML="$"+`${response.payload[0].item[0].unitPrice}` ;
            for (let i = 0; i < response.payload[0].item.length; i++)      
            {        
                           var trTag= document.createElement("tr")
                            var tdTag1=document.createElement("td")
                            var tdTag2=document.createElement("td")
                            var tdTag3=document.createElement("td")
                            var tdTag4=document.createElement("td")
                            var tdTag5 = document.createElement("td")
                           
                            var spanDecrementTag = document.createElement("span")
                            spanDecrementTag.setAttribute("class","input-number-decrement") 

                            var spanIncrementTag = document.createElement("span")
                            spanIncrementTag.setAttribute("class","input-number-increment") 
                            
                            var iMinusTag = document.createElement("i")
                            iMinusTag.setAttribute("class","ti-minus")

                            var iPlusTag = document.createElement("i")
                            iPlusTag.setAttribute("class","ti-plus")
                           
                            var inputTag= document.createElement("input")
                            inputTag.setAttribute("class","input-number")
                            inputTag.setAttribute("type","text")
                            inputTag.setAttribute("value","1")
                            inputTag.setAttribute("min","0")
                            inputTag.setAttribute("max","10")

                           
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
                            //divTag3.appendChild(pTag);
                            tdTag1.appendChild(divTag1)
                            tdTag3.appendChild(subDivTag);
                            
                            
                            divTag2.innerHTML="<img src='../img/arrivel/arrivel_1.png ' alt=''>" 
                            divTag3.innerHTML=`<p>${response.payload[0].item[0].skuId}</p>`
                            tdTag2.innerHTML=`<h5>${response.payload[0].item[0].unitPrice}</h5>`
                           
                             spanDecrementTag.appendChild(iMinusTag)
                           spanIncrementTag.appendChild(iPlusTag)
                           subDivTag.appendChild(spanDecrementTag)
                           subDivTag.appendChild(inputTag)
                           subDivTag.appendChild(spanIncrementTag)
                            
                           tdTag4.innerHTML=`<h5> $720 </h5>`
                            trTag.appendChild(tdTag1);
                            trTag.appendChild(tdTag2);
                            trTag.appendChild(tdTag3);
                            trTag.appendChild(tdTag4);

                            var template=` <span class="input-number-decrement"> <i class="ti-minus"></i></span>
                            <input class="input-number" type="text" value="1" min="0" max="10">
                            <span class="input-number-increment"> <i class="ti-plus"></i></span>`;
                            $("#count").append(template);
                           //$(trTag).prependTo(document.getElementById("cart-item"));
                            console.log(trTag);
            
                        
            }

        }
    });
});


