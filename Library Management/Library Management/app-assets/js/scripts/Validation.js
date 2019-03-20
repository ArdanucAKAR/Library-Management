function IsEmpty(sender, args) {
    if (args.Value == "") {
        args.IsValid = false;
        $("#" + $(sender)[0].controltovalidate).addClass("is-invalid");
    }
    else {
        args.IsValid = true;
        $("#" + $(sender)[0].controltovalidate).removeClass("is-invalid");
    }
}