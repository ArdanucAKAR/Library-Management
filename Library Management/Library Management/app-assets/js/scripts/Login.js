$('#btnLogin').popover({
    content: 'Kullanıcı Adı veya Şifre Yanlış',
    trigger: 'manual',
    placement: 'right'
});
$(document).keypress(function (event) {
    if (event.keyCode === 13) {
        $("#btnLogin").click();
    }
});
function CheckLogin() {
    if (Page_ClientValidate("Login")) {
        var username, password;
        username = $("#txtUsername").val();
        password = $("#txtPassword").val();
        $.ajax({
            type: "POST",
            url: "Login.aspx/CheckLogin",
            data: "{username : '" + username + "', password : '" + password + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                if (response.d === true) {
                    $("#txtUsername").removeClass("is-invalid").addClass("is-valid");
                    $("#txtPassword").removeClass("is-invalid").addClass("is-valid");
                    setTimeout(function () {
                        location.replace("Home");
                    }, 1000);
                }
                else {
                    $("#txtUsername").removeClass("is-valid").addClass("is-invalid");
                    $("#txtPassword").removeClass("is-valid").addClass("is-invalid");
                    $("#btnLogin").popover('show');
                    setTimeout(function () {
                        $("#btnLogin").popover('hide');
                    }, 3000);
                }
            },
            failure: function (response) {
            },
            error: function (response) {
            }
        });
    }
}