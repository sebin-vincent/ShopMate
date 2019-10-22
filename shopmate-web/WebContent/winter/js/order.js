$(document).ready(function () {
  sessionStorage.setItem("profile_id", "1001")
  var profileid = sessionStorage.getItem("profile_id")
    $.ajax({
      url: "http://localhost:8084/order/get/allorder/"+profileid,
  
      success: function (response) {
        var temp = response.payload
        for (let i = 0; i < temp.length; i++)      
        {
        // console.log(result);
            var trTag = document.createElement("tr")
            var tdTag1 = document.createElement("td")
            var tdTag2 = document.createElement("td")
            var tdTag3 = document.createElement("td")
            var tdTag4 = document.createElement("td")
            var tdTag5 = document.createElement("td")

            var divTag = document.createElement("div")
            // divTag.setAttribute("class","media")
            var pTag = document.createElement("p")
            pTag.innerHTML = `${temp[i].orderId}`;
            divTag.appendChild(pTag);
            tdTag1.appendChild(divTag);
            var h5Tag = document.createElement("h5")
            h5Tag.innerHTML=`$${response.payload[i].totalAmount}`;
            tdTag2.appendChild(h5Tag);

            // var h5Tag2 = document.createElement("h5")
            // h5Tag2.innerHTML=`${response.payload[i].orderStatusId}`

            // tdTag3.appendChild(h5Tag2);

            var h5Tag3 =document.createElement("h5");
            h5Tag3.innerHTML=`${response.payload[i].deliveryDate}`

            tdTag4.appendChild(h5Tag3);

            trTag.appendChild(tdTag1)
            trTag.appendChild(tdTag2)
            // trTag.appendChild(tdTag3)
            trTag.appendChild(tdTag4)

            var orderlist = document.getElementById("orderList")
            orderlist.append(trTag);

            if(`${response.payload[i].orderStatusId}` == 1){
                var cancelbutton = document.createElement("button");
                cancelbutton.setAttribute("class","cancelbutton")
                cancelbutton.innerHTML="incomplete"
                tdTag5.appendChild(cancelbutton)

                trTag.appendChild(tdTag5)
            }
            if(`${response.payload[i].orderStatusId}` == 2){
                var completed = document.createElement("h5")
                completed.innerHTML="completed"
                tdTag5.appendChild(completed)
                trTag.appendChild(tdTag5)

            }
            if(`${response.payload[i].orderStatusId}` == 3){
                var cancel = document.createElement("h5")
                cancel.innerHTML="cancelled"
                tdTag5.appendChild(cancel)
                trTag.appendChild(tdTag5)
            }
            // var skuId = response.payload[0].item[0].skuId
            // console.log(skuId)
            for (let j = 0; j < response.payload[i].item.length; j++){
              var trTag123 = document.createElement("tr")
              var tdTag123 = document.createElement("td")
              var ptag123 = document.createElement("h5")
              $.ajax({
                type: "GET",
                url: "http://localhost:8083/items/"+`${response.payload[i].item[j].skuId}`,
                success: function (response2) {
                  
                  console.log(response2.itemName)
                  ptag123.innerHTML=response2.itemName
                  
                 
                }
              });
              tdTag123.appendChild(ptag123)
              trTag123.appendChild(tdTag123)
            } 
            orderlist.append(trTag123)
        }
      }
    });
  });