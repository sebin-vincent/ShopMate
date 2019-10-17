$(function () {
    $('button').on('click', function () {
        var Status = $(this).val();
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/login",
            dataType:JSON,
            data: {
                userName: $("input[name=email]").val(),
                password:$("input[name=password]").val()
            },
            dataType : 'json'
        });
        var text= $("input[name=email]").val()
        console.log(text)
    });
});