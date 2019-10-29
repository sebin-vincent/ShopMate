$(document).ready(function () {
    
    $("#google_auth").click(function (e) {

        e.preventDefault();

        window.location = 'http://localhost:8080'

        // $.ajax({
        //     type: "GET",
        //     url: "http://localhost:8080/",
            
        //     success: function (response) {
        //         console.log(response);    
        //     }
        // });

        
    });

});