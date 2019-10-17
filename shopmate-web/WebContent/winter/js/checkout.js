
$(function(){ 
   
    var $selectDiv=$('#payment_methods');
     $.ajax({ 
         type: "GET",
         dataType: "json",
         url: "http://localhost:8080/paymentmethod",
         success: function(data){             
             $.each(data.payload, function(i,value){  
                 var template=`<option value="${i+1}"> ${value.paymentMethod}</option>`;          
                $("#payment_methods").append(template);             
                console.log(value.paymentMethod);
             });               

         }
        });
        
});