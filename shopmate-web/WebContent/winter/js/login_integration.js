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

//change password
/*
function change_password(){
    
    //works when change button pressed
    $("#change_paswd_bttn").click(function (e) { 
        e.preventDefault();
        change();  
    });
    function change(){
        datas={
            profileId:1,
            login_id:"resmi.puthirippadath@gmail.com",
            password=$("input[name=password1]").val(),
            new_password=$("input[name=password2]").val(),
            conf_password=$("input[name=password3]").val()
        } 
        $.ajax({
            type: "PUT",
            contentType: 'application/json',
            dataType:  "json",
            url: "http://localhost:8080/changepassword",
            data: JSON.stringify(datas),
            success: function (response) {
                var status_message=response.status_Message;
                if(status_message==="password changed successfully"){
                    alert("password changed successfully");
                    window.location.href = "F:/shopmate/shopmate-web/WebContent/winter/templates/login.html";
                }
                else{
                    alert("try again")
                    window.location.href = "F:/shopmate/shopmate-web/WebContent/winter/templates/login.html";
                }
            }
        });
    }

    
}
*/

//signup

$("#sign_up_bttn").click(function (e) { 
    e.preventDefault();
    signup();
});
function signup(){
    datas={
         firstName:$("input[name=name]").val(),
         lastName:"litmus",
         email:$("input[name=email]").val(),
         password:$("input[name=password]").val(),
         questionId:2,
         mobile:parseInt($("input[name=tel-num]").val()),
         answer:"rose"

	// firstName:"amjad",
	// lastName:"sdfdfkjs",
	// email:"a@litmus7.com",
	// password:"Password",
	// questionId:2,
	// mobile:4567890,
	// answer:"rose"
    }

    console.log(datas)
    $.ajax({
        type: "POST",
        url: "http://localhost:8080/signup",
        contentType: 'application/json',
        data: JSON.stringify(datas),
        dataType: "json",
        
        success: function (response) {
            alert("signup successfull")
            console.log(response)
        }
    });
}

//forgot password

//appending security questions
$("#forgot_pswd").click(function (e) { 
    e.preventDefault();
    var selector_id=$("#sec_quest")
    
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
    
});

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