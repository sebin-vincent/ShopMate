var savedAddressClicked=false;
$(document).ready(function () {
    
$(function(){ 
   
    var $selectDiv=$('#payment_methods');
     $.ajax({ 
         type: "GET",
         dataType: "json",
         url: "http://localhost:8084/paymentmethod",
         success: function(data){             
             $.each(data.payload, function(i,value){  
                 var template=`<option value="${i+1}"> ${value.paymentMethod}</option>`;          
                $("#payment_methods").append(template);             
                console.log(value.paymentMethod);
             });               

         }
        });        
});



$('#saved_address').click(function(){ 
    
//    var sessionId= sessionStorage.getItem("profileId"); 
//    var urlOriginal="http://localhost:8080/shippingaddress/"
//    url:  urlOriginal+sessionId,
if(savedAddressClicked===false){   
    savedAddressClicked=true;
    console.log(savedAddressClicked);
     $.ajax({ 
         type: "GET",
         dataType: "json",

         url: "http://localhost:8080/shippingaddress/4",
         success: function(data){     
            $.each(data,function(i,value){
                var template=`<input type="radio" id="ship_address${i}" name="selector" />         
                <textarea class="form-control" name="message" id="message-textarea_${i}" rows="5"
                placeholder="Shipping Address" style="padding-bottom: 8rem;"></textarea>`;
                $("#ship_section").append(template);
                var textAreaId=`"message-textarea_${i}"`;
                $('#message-textarea_'+i).val(`${data[i].houseName},\n${data[i].street},\n${data[i].city},\n${data[i].state},\n${data[i].country},\n${data[i].postcode}`);             
                console.log(data[i]);

                //to retrieve data from selected textarea
                $('#ship_address'+i).click(function(){
                    var address = $('#message-textarea_'+i).val();
                    console.log(address);
                });
            });                
             }                       
        }); 

    } 
    });
});

$('#saved_address').click(function(){ 
    
    document.getElementById("new_ship_address").style.display='none';
    document.getElementById("ship_section").style.display="";
    
    
});

$('#f-option3').click(function(){ 
    savedAddressClicked=false;
    document.getElementById("ship_section").style.display='none';
    document.getElementById("new_ship_address").style.display="";
    $('#ship_section').html('');

   
});


