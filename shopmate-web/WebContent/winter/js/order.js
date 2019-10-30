$(document).ready(function () {
  var profileid = sessionStorage.getItem("profile_id")
  var temp
  var emptycart = document.getElementById('table')
  function cancel(orderidparam){
    var url = "http://localhost:8084/order/cancel/" + orderidparam
    $.ajax({
      type: "PUT",
      url: url,
      async: false,
      success: function (response3) {

        if(response3.message == "success"){
          window.location.href = "order.html";
        }
        
      }
    });
  }
  if (profileid == null) {
    alert("please login")
    window.location.href = "login.html";
  } else {
    $.ajax({
      url: "http://localhost:8084/order/get/allorder/" + profileid,

      success: function (response) {
        temp = response.payload

        for (let i = 0; i < temp.length; i++) {
          if(temp[i].orderStatusId == 1){
            continue;
          }
          var trTag = document.createElement("tr")
          var tdTag1 = document.createElement("td")
          var tdTagEmpty = document.createElement("td")
          var tdTag5 = document.createElement("td")

          var divTag = document.createElement("div")
          var pTag = document.createElement("h5")
          pTag.setAttribute("style", "background-color:rgb(34, 122, 253);height: 30px;width: 100px;border-radius:5px ;text-align: center;align-content: center; padding-top: 0.3rem;color: white;")
          pTag.innerHTML = "Order Id:" + temp[i].orderId
          divTag.appendChild(pTag);
          tdTag1.appendChild(divTag);

          trTag.appendChild(tdTag1)
          trTag.appendChild(tdTagEmpty)

          var orderlist = document.getElementById("orderList")
          orderlist.append(trTag);

          if (temp[i].orderStatusId == 0) {
            var orderPlaced = document.createElement("h5")
            orderPlaced.setAttribute("style", "background-color:green;height: 30px;width: 100px;border-radius:5px ;text-align: center;align-content: center; padding-top: 0.3rem;color: white;")
            orderPlaced.innerHTML = "order placed"
            tdTag1.appendChild(orderPlaced)
            trTag.appendChild(tdTag5)
          }

          if (temp[i].orderStatusId == 0) {
            // var cancelorder = document.createElement("button")
            // cancelorder.setAttribute("class","cancelbutton")
            // cancelorder.innerHTML = "cancel order"
            // tdTag1.appendChild(cancelorder)
            // trTag.appendChild(tdTag5)

            var cancelanchor = document.createElement("a")
            //var cancelurl = "http://localhost:8084/order/cancel/" + temp[i].orderId
            //cancelanchor.setAttribute("href",cancelurl)
            var cancelorder = document.createElement("button")
            cancelorder.setAttribute("class","cancelbutton")
            cancelorder.innerHTML = "cancel order"
            var funName="cancel("+temp[i].orderId+")"
            cancelorder.setAttribute("onclick",funName)

            cancelanchor.appendChild(cancelorder)
            tdTag1.appendChild(cancelanchor)
            trTag.appendChild(tdTag5)
          }


          if (temp[i].orderStatusId == 1) {
            var cancelbutton = document.createElement("button");
            cancelbutton.setAttribute("class", "cancelbutton")
            cancelbutton.innerHTML = "incomplete"
            // tdTag1.appendChild(cancelbutton)
            // trTag.appendChild(tdTag5)

            atag = document.createElement("a")
            var urlLink="cart.html"
            atag.setAttribute("href",urlLink)

            atag.appendChild(cancelbutton)
            tdTag1.appendChild(atag)
            trTag.appendChild(tdTag5)
          }
          if (temp[i].orderStatusId == 2) {
            var completed = document.createElement("h5")
            completed.setAttribute("style", "background-color:green;height: 30px;width: 100px;border-radius:5px ;text-align: center;align-content: center; padding-top: 0.3rem;color: white;")
            completed.innerHTML = "completed"
            tdTag1.appendChild(completed)
            trTag.appendChild(tdTag5)

          }
          if (temp[i].orderStatusId == 3) {
            var cancel = document.createElement("h5")
            cancel.setAttribute("style", "background-color:red;height: 30px;width: 100px;border-radius:5px ;text-align: center;align-content: center; padding-top: 0.3rem;color: white;")
            cancel.innerHTML = "cancelled"
            tdTag1.appendChild(cancel)
            trTag.appendChild(tdTag5)
          }


          for (let j = 0; j < temp[i].item.length; j++) {
            var trTag123 = document.createElement("tr")

            var tdTagItemName = document.createElement("td")
            tdTagItemName.setAttribute("style", "padding-left: 20%; ")
            var h5tagitemName = document.createElement("h5")

            var tdTag2 = document.createElement("td")
            var h5tagQuantity = document.createElement("h5")

            var tdTag3 = document.createElement("td")
            var h5tagAmount = document.createElement("h5")

            var imgTag1 = document.createElement("img")

            var url = "http://localhost:8082/sku/details/" + temp[i].item[j].skuId
            $.ajax({
              type: "GET",
              url: url,
              async: false,
              success: function (response2) {
                var resp2 = response2
                console.log(resp2)
                imgTag1.setAttribute("src",resp2.imageUrl)
                imgTag1.setAttribute("style", "height: 100px;width: 60px;border-radius:5px ;align-content: center; padding-top: 0.3rem;")
                tdTagItemName.appendChild(imgTag1)

                atag = document.createElement("a")
                var urlLink="single-product.html?"+temp[i].item[j].skuId
                atag.setAttribute("href",urlLink)
                h5tagitemName.innerHTML = resp2.skuName
                atag.appendChild(h5tagitemName)
                tdTagItemName.appendChild(atag)

                //<a href="single-product.html?${response.payload[i].skuId}">

                // h5tagitemName.innerHTML = resp2.skuName
                // tdTagItemName.appendChild(h5tagitemName)

                h5tagQuantity.innerHTML = temp[i].item[j].quantity
                tdTag2.appendChild(h5tagQuantity)

                h5tagAmount.innerHTML = resp2.salePrice
                tdTag3.appendChild(h5tagAmount)


                trTag123.appendChild(tdTagItemName)
                trTag123.appendChild(tdTag2)
                trTag123.appendChild(tdTag3)
              }
            });
            orderlist.append(trTag123)
            var newLine = document.createElement("br")
            orderlist.append(newLine)

          }

        }
      }
    });
  }
});

