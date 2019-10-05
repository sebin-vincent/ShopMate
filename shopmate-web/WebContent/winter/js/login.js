document.getElementById("new_to_shop").addEventListener("click",function() {

  document.getElementById("breadcrumb").textContent='Home / SignUp';
  document.getElementById("new_to_our_shop").style.display='none';
  document.getElementById("login").style.display='none';
  document.getElementById("already_our_customer").style.display='block';
  document.getElementById("sign_up").style.display='block';
});

document.getElementById("already_customer").addEventListener("click",function() {

  document.getElementById("breadcrumb").textContent='Home / Login';
  document.getElementById("new_to_our_shop").style.display='block';
  document.getElementById("login").style.display='block';
  document.getElementById("already_our_customer").style.display='none';
  document.getElementById("sign_up").style.display='none';
});

document.getElementById("sign_up_bttn").addEventListener("click",function() {
  var pass1=document.getElementById("sign_password").value;
  var pass2=document.getElementById("conf_password").value;
  var name=document.getElementById("name").value;
  var email=document.getElementById("email").value;
  var phone=document.getElementById("tel-num").value;

  if(pass1!=pass2){
    alert("Passwords does not match !");

  }else if (pass1=="" || pass2=="" ||name=="" || email=="" || phone=="") {

    alert("Please fill all feilds!");

  }
  else{
    document.getElementById("sign_up_form").submit();
  }
});

// function signup() {
//
//   document.getElementById("breadcrumb").textContent='Home / SignUp';
//   document.getElementById("new_to_our_shop").style.display='none';
//   document.getElementById("login").style.display='none';
//   document.getElementById("already_our_customer").style.display='block';
//   document.getElementById("sign_up").style.display='block';
//   document.getElementById("sign_up_bttn").disabled=false;
//
// }
