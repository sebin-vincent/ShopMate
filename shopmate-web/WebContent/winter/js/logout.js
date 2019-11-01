function logout(){
  //console.log("hi")
  console.log(sessionStorage.getItem("profile_id"))
   sessionStorage.removeItem("profile_id")
   console.log(sessionStorage.getItem("profile_id"))
  
   }