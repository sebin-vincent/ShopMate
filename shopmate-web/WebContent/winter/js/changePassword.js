$(document).ready(function () {
    
    document.getElementById("change_password_right").style.display='block';
  document.getElementById("login").style.display='none';
  document.getElementById("already_our_customer").style.display='block';
  document.getElementById("new_to_our_shop").style.display='none'; 
  document.getElementById("forgot_password").style.display='none';
  document.getElementById("forgot_password_left").style.display='none';
  
});

document.getElementById("change_paswd_bttn").addEventListener("click",function() {
    var oldPaswd=document.getElementById("chng_old_password").value;
    var newPaswd=document.getElementById("chng_new_password").value;
    var confPaswd=document.getElementById("chng_conf_password").value;
    if(newPaswd!=confPaswd){
      alert("Please confirm new password!");
    }else if (newPaswd=="" || confPaswd=="" ||oldPaswd=="") {
      alert("Please fill all fields!");
    }
    else{
      document.getElementById("change_password_form").submit();
    }
  });