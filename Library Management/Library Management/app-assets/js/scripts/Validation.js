$('#txtUsername').popover({
    content: 'Kullanıcı Adı Boş Geçilemez',
    trigger: 'manual',
    placement: 'right'
});
$('#txtPassword').popover({
    content: 'Şifre Boş Geçilemez',
    trigger: 'manual',
    placement: 'right'
});
function IsEmpty(sender, args) {
    if (args.Value == "") {
        args.IsValid = false;
        $("#" + $(sender)[0].controltovalidate).addClass("is-invalid");
        $("#" + $(sender)[0].controltovalidate).popover('show');
        setTimeout(function () {
            $("#" + $(sender)[0].controltovalidate).popover('hide');
        }, 3000);

    }
    else {
        args.IsValid = true;
        $("#" + $(sender)[0].controltovalidate).removeClass("is-invalid");
    }
}