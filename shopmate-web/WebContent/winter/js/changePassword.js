$(document).ready(function () {
    
    document.getElementById("change_password_right").style.display='block';
  document.getElementById("login").style.display='none';
  document.getElementById("already_our_customer").style.display='block';
  document.getElementById("new_to_our_shop").style.display='none'; 
  document.getElementById("forgot_password").style.display='none';
  document.getElementById("forgot_password_left").style.display='none';
  
});

document.getElementById("change_paswd_bttn").addEventListener("click",function() {
  var username=document.getElementById("chng_user_name").value;
    var oldPaswd=document.getElementById("chng_old_password").value;
    var newPaswd=document.getElementById("chng_new_password").value;
    var confPaswd=document.getElementById("chng_conf_password").value;
    datas={
      
      profile_Id:54,
      login_Id:username,
      password:oldPaswd,
      extra:{
          new_password:newPaswd,
          conf_password:confPaswd
      }


    }
    console.log(datas);
    if(newPaswd!=confPaswd){
      alert("Please confirm new password!");
    }else if (newPaswd==null || confPaswd==null || oldPaswd==null || username==null) {
      alert("Please fill all fields!");
    }
    
    else{
      $.ajax({
        type: "PUT",
        contentType: 'application/json',
        dataType: "json",
        url: "http://localhost:8080/changepassword",
        data: JSON.stringify(datas),
        success: function (response) {
            var status_message = response.status_Message;
            console.log(response);
            if (status_message === "password changed successfully") {

                alert("password changed successfully");
                $('#forgot_password_form')[0].reset();
                window.location.href = "login.html";
               // window.location.href = "../../index.html";
            }
            else if (response.status_Message == "Invalid credentials") {
                alert("Invalid credentials")
                
            }
            else if(response.status_Message=="password must contain atleast 8 charecters"){
              alert("password must contain atleast 8 charecters");
            }
        }
    });

     // document.getElementById("change_password_form").submit();
    }
  });


  function change_password() {

    //works when change button pressed
    $("#change_paswd_bttn").click(function (e) {
        e.preventDefault();
        change();
    });
    function change() {
        datas = 
            {
                profile_Id:54,
                login_Id:"neenu",
                password:"qazwsxedc",
                extra:{
                    new_password:"qwertyuiop",
                    conf_password:"qwertyuiop"
                }
            
            
        }




        // profileId:1,
        // login_id:"resmi.puthirippadath@gmail.com",
        // password=$("input[name=password1]").val(),
        // new_password=$("input[name=password2]").val(),
        // conf_password=$("input[name=password3]").val()

        $.ajax({
            type: "POST",
            contentType: 'application/json',
            dataType: "json",
            url: "http://localhost:8080/changepassword",
            data: JSON.stringify(datas),
            success: function (response) {
                var status_message = response.status_Message;
                if (status_message === "password changed successfully") {
                    alert("password changed successfully");
                    window.location.href = "../../index.html";
                }
                else if (status_Message == "User already exist") {
                    alert("user already exist")
                    window.location.href = "login.html";
                }
            }
        });
    }

}