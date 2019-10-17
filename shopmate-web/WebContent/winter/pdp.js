$(function(){
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/sku/248",
        success: function (response) {
            console.log(response.payload[0]);
            
        }
    
    });
    });