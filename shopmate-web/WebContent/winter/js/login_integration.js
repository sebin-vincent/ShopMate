//login
$("#login-button").click(function (e) { 
    e.preventDefault();
    
    ajaxCall();
    
});
function ajaxCall(){
    datas={
            userName: $("input[name=email]").val(),
            password:$("input[name=password]").val()
        }
        console.log(datas)
    $.ajax({
        type: "POST",
        url: "http://localhost:8080/login",
        contentType: 'application/json',
        data: JSON.stringify(datas),
        dataType: "json",
        success: function (response) {
            if(response.status_Code==200){
                console.log(response)
                if (typeof(Storage) !== "undefined") {
                    // Store
                    sessionStorage.setItem("profile_id", response.payload);
                    // Retrieve
                    console.log(sessionStorage.getItem("profile_id"))
                  } else {
                    alert("browser not support");
                  }
                window.location.href = "F:/shopmate/shopmate-web/WebContent/winter/templates/index.html";
            }
            else{
                alert("invalid credentials")
            }
            
        }
    });
}

$("#change_paswd_show_bttn").click(function (e) { 
    e.preventDefault();
    change_password  ();  
});

//login-session creation
if (typeof(Storage) !== "undefined") {
    // Store
    sessionStorage.setItem("lastname", "Smith");
    
    console.log( sessionStorage.getItem("lastname"));
  } else {
    console.log("does not support");
  }


//change password

function change_password(){
    
    //works when change button pressed
    $("#change_paswd_bttn").click(function (e) { 
        e.preventDefault();
        change();  
    });
    function change(){
        datas={

            profile_id:4,
	        password:"qwertyuiop",
	        extra:{
		        new_Password:"new_password",
		        conf_new_Password:"new_password"
	        }
        }

            
        $.ajax({
            type: "POST",
            contentType: 'application/json',
            dataType:  "json",
            url: "http://localhost:8080/changepassword",
            data: JSON.stringify(datas),
            success: function (response) {
                var status_message=response.status_Message;
                if(status_message==="password changed successfully"){
                    alert("password changed successfully");
                    window.location.href = "F:/shopmate/shopmate-web/WebContent/winter/templates/index.html";
                }
                else if(status_Message=="User already exist"){
                    alert("user already exist");
                    window.location.href = "F:/shopmate/shopmate-web/WebContent/winter/templates/login.html";
                }
            }
        });
    }

}


//signup

// $("#sign_up_bttn").click(function (e) { 
//     e.preventDefault();
//     signup();
// });
// function signup(){
   
//         datas={
        

//             firstName:$("input[name=name]").val(),
//             lastName:"litmus",
//             email:$("input[name=email]").val(),
//             password:$("input[name=password]").val(),
//             questionId:$("#sec_quest_").val(),
//             answer:$("input[name=Sec_ans]").val(),
//             mobile:parseInt($("input[name=tel-num]").val()),
            
   
//        }
    

//     console.log(datas)
//     // $.ajax({
//     //     type: "POST",
//     //     url: "http://localhost:8080/signup",
//     //     contentType: 'application/json',
//     //     data: JSON.stringify(datas),
//     //     dataType: "json",
        
//     //     success: function (response) {
//     //         console.log(response);
//     //         alert("signup successfull")
            
//     //     }
//     // });
// }

//forgot password

//appending security questions
$("#new_to_shop").click(function (e) { 
    e.preventDefault();
    var selector_id=$("#sec_quest_")
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/questions",
        contentType: 'application/json',
        //data: JSON.stringify(datas),
        dataType: "json",
        success: function (response) {
            
            //console.log(response)
            for(var i=0;i<2;i++){
                console.log(response[i][1])
                var templates=`<option value="${response[i][0]}">${response[i][1]}</option>`;
            $("#sec_quest_").append(templates);

           }
            
        }
    });
});
$("#forgot_pswd").click(function (e) { 
    e.preventDefault();
    var selector_id=$("#sec_quest")
    security_question();
    
    
});
function security_question(){
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/questions",
        contentType: 'application/json',
        //data: JSON.stringify(datas),
        dataType: "json",
        success: function (response) {
            
            //console.log(response)
            for(var i=0;i<2;i++){
                console.log(response[i][1])
                var templates=`<option value="${response[i][0]}">${response[i][1]}</option>`;
            $("#sec_quest").append(templates);

           }
            
        }
    });
}

//for update button
/*
$("#fp_up_bttn").click(function (e) { 
    e.preventDefault();
    
    forgotPassword();
});


function forgotPassword(){
    datas={
        profile_id:4,
        email_id:$("input[name=email_c]").val(),
        question_id:$('#sec_quest').val(),
        answer:$("input[name=sec_ans]").val(),
        password:$("input[name=password1]").val(),
        conf_password:$("input[name=password2]").val()
    }
    //console.log(datas)
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/questions",
        contentType: 'application/json',
        //data: JSON.stringify(datas),
        dataType: "list",
        success: function (response) {
            console.log(response)
        }
    });
}

*/