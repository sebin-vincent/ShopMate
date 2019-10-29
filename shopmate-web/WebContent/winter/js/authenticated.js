$(document).ready(function () {
    
    let authParams = new URLSearchParams(window.location.search);
    sessionStorage.setItem('profile_id', authParams.get('pid'))

});