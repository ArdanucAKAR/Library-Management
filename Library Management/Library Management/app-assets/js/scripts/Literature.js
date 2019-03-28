//var groupingTable = $('.row-grouping').DataTable({
//    "columnDefs": [{
//        "visible": false,
//        "targets": 5
//    }],
//    "order": [
//        [2, 'asc']
//    ],
//    "displayLength": 25,
//    "drawCallback": function (settings) {
//        var api = this.api();
//        var rows = api.rows({
//            page: 'current'
//        }).nodes();
//        var last = null;

//        api.column(5, {
//            page: 'current'
//        }).data().each(function (group, i) {
//            if (last !== group) {
//                $(rows).eq(i).before(
//                    '<tr class="group"><td colspan="5">' + group + '</td></tr>'
//                );

//                last = group;
//            }
//        });
//    },
//    "language": {
//        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Turkish.json"
//    }
//});

//$('.row-grouping tbody').on('click', 'tr.group', function () {
//    var currentOrder = table.order()[0];
//    if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
//        table.order([2, 'desc']).draw();
//    }
//    else {
//        table.order([2, 'asc']).draw();
//    }
//});

//function formatDate(date) {
//    var d = new Date(date),
//        month = '' + (d.getMonth() + 1),
//        day = '' + d.getDate(),
//        year = d.getFullYear();

//    if (month.length < 2) month = '0' + month;
//    if (day.length < 2) day = '0' + day;

//    return [year, month, day].join('-');
//}

//$('.memberList').DataTable();

$(document).ready(function () {
    $("#cbTranslate").change(function () {
        if (this.checked) {
            $("#txtCevirenAdSoyad").removeAttr("disabled");
            $("#ddlLanguage").removeAttr("disabled");
        }
        else {
            $("#txtCevirenAdSoyad").attr("disabled", "disabled");
            $("#ddlLanguage").attr("disabled", "disabled");
        }
    });
});

//Member Add
$(".bookAddSteps").steps({
    headerTag: "h6",
    bodyTag: "fieldset",
    transitionEffect: "fade",
    titleTemplate: '<span class="step">#index#</span> #title#',
    labels: {
        finish: 'Kaydet',
        next: 'İleri',
        previous: 'Önceki'
    },
    onInit: function (event, current) {
        $('.actions > ul > li:first-child').addClass("d-none");
    },
    onStepChanging: function (event, currentIndex, newIndex) {
        if (newIndex !== 0) {
            $('.actions > ul > li:first-child').removeClass("d-none");
        }
        else {
            $('.actions > ul > li:first-child').addClass("d-none");
        }
        if (currentIndex > newIndex) {
            return true;
        }
        if (currentIndex === 0) {
            if (Page_ClientValidate("Step1")) {
                return true;
            }
            else {
                $('.actions > ul > li:first-child').addClass("d-none");
                return false;
            }
        }
        if (currentIndex === 1) {
            if ($("#cbTranslate").prop("checked") === true) {
                if (Page_ClientValidate("Step2")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            else {
                return true;
            }
        }
    },
    onFinished: function (event, currentIndex) {
        if (Page_ClientValidate("Step3")) {
            $.ajax({
                type: "POST",
                url: "/Literature.aspx/AddBook",
                data: "{ISBN:'" + $("#txtISBNKodu").val() + "', Name:'" + $("#txtKitapAdı").val() + "', SideName:'" + $("#txtYanİsim").val() + "', AuthorFullName:'" + $("#txtYazarAdSoyad").val() + "', TranslaterFullName:'" + $("#txtCevirenAdSoyad").val() + "', Publisher:'" + $("#txtYayinevi").val() + "', PublishingLocation:'" + $("#txtYayineviYeri").val() + "', Circulation:'" + ($("#txtBasimSayisi").val() === "" ? "0" : $("#txtBasimSayisi").val()) + "', PublishDate:'" + $("#txtYayinTarihi").val() + "', Language:'" + $('select[id="ddlLanguage"]').val() + "', DDCCode:'" + $("#txtDDCKodu").val() + "', PageNumber:'" + ($("#txtSayfaSayisi").val() === "" ? "0" : $("#txtSayfaSayisi").val()) + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $("#txtISBNKodu").val("");
                    $("#txtKitapAdı").val("");
                    $("#txtYanİsim").val("");
                    $("#txtYazarAdSoyad").val("");
                    $("#txtCevirenAdSoyad").val("");
                    $("#txtYayinevi").val("");
                    $("#txtYayineviYeri").val("");
                    $("#txtBasimSayisi").val("");
                    $("#txtYayinTarihi").val("");
                    $('select[id="ddlLanguage"]').val(1);
                    $("#txtDDCKodu").val("");
                    $("#txtSayfaSayisi").val("");
                    toastr.success('Başarılı', 'Kitap Eklendi');
                    $(".bookAddSteps").steps("previous");
                    $(".bookAddSteps").steps("previous");
                    $(".bookAddSteps").steps("previous");
                },
                failure: function (response) {
                },
                error: function (response) {
                    toastr.error('Hata', 'Kitap Eklenemedi');
                }
            });
        }
        else {
            return false;
        }
    }
});

//Member Delete
$(".bookDeleteSteps").steps({
    headerTag: "h6",
    bodyTag: "fieldset",
    transitionEffect: "fade",
    titleTemplate: '<span class="step">#index#</span> #title#',
    labels: {
        finish: 'Sil',
        next: 'Sil',
        previous: 'Geri Dön'
    },
    onInit: function (event, current) {
        $('.actions > ul > li:first-child').addClass("d-none");
    },
    onStepChanging: function (event, currentIndex, newIndex) {
        if (newIndex !== 0) {
            $('.actions > ul > li:first-child').removeClass("d-none");
        }
        else {
            $('.actions > ul > li:first-child').addClass("d-none");
        }
        if (currentIndex > newIndex) {
            return true;
        }
        if (currentIndex === 0) {
            if (Page_ClientValidate("Step1")) {
                return true;
            }
            else {
                return false;
            }
        }
    },
    onFinished: function (event, currentIndex) {
        $.ajax({
            type: "POST",
            url: "/Literature.aspx/DeleteBook",
            data: "{ISBN : '" + $("#txtDeleteISBNKodu").val() + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $("#txtDeleteISBNKodu").val("");
                toastr.success('Başarılı', 'Kayıt Silindi');
                $(".memberDeleteSteps").steps("previous");
                $(".memberDeleteSteps").steps("previous");
            },
            failure: function (response) {
            },
            error: function (response) {
                toastr.error('Hata', 'Kayıt Silinemedi');
            }
        });
    }
});

//Member Update
$(".bookUpdateSteps").steps({
    headerTag: "h6",
    bodyTag: "fieldset",
    transitionEffect: "fade",
    titleTemplate: '<span class="step">#index#</span> #title#',
    labels: {
        finish: 'Güncelle',
        next: 'Ara',
        previous: 'Geri Dön'
    },
    onInit: function (event, current) {
        $('.actions > ul > li:first-child').addClass("d-none");
    },
    onStepChanging: function (event, currentIndex, newIndex) {
        if (newIndex !== 0) {
            $('a[href$="next"]').text('İleri');
            $('.actions > ul > li:first-child').removeClass("d-none");
        }
        else {
            $('a[href$="next"]').text('Ara');
            $('.actions > ul > li:first-child').addClass("d-none");
        }
        if (currentIndex > newIndex) {
            return true;
        }
        if (newIndex === 1) {
            if (Page_ClientValidate("Step1")) {
                $.ajax({
                    type: "POST",
                    url: "/Literature.aspx/GetBook",
                    data: "{ISBN : '" + $("#txtEnterISBNKodu").val() + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var data = response.d;
                        console.log(data);
                        $.cookie("bookId", data.ID);
                        $("#txtUpdateISBNKodu").val(data.ISBNCode);
                        $("#txtUpdateKitapAdı").val(data.Name);
                        $("#txtUpdateYanİsim").val(data.SideName);
                        $("#txtUpdateYazarAdSoyad").val(data.PublishInfo.AuthorFullName);
                        $("#txtUpdateCevirenAdSoyad").val(data.TranslaterFullName);
                        $("#txtUpdateYayinevi").val(data.PublishInfo.Publisher);
                        $("#txtUpdateYayineviYeri").val(data.PublishInfo.PublishingLocation);
                        $("#txtUpdateBasimSayisi").val(data.PublishInfo.Circulation);
                        $("#txtUpdateYayinTarihi").val(data.PublishInfo.PublishDate);
                        $('select[id="ddlUpdateLanguage"]').val(data.Language);
                        $("#txtUpdateDDCKodu").val(data.DDCCode);
                        $("#txtUpdateSayfaSayisi").val(data.PageNumber);
                    },
                    failure: function (response) {
                    },
                    error: function (response) {
                    }
                });
                return true;
            }
            else {
                return false;
            }
        }
        if (newIndex === 2) {
            if (Page_ClientValidate("Step2")) {
                return true;
            }
            else {
                return false;
            }
        }
        if (newIndex === 3) {
            if ($("#cbUpdateTranslate").prop("checked") === true) {
                if (Page_ClientValidate("Step3")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            else {
                return true;
            }
        }
    },
    onFinished: function (event, currentIndex) {
        if (Page_ClientValidate("Step4")) {
            $.ajax({
                type: "POST",
                url: "/Literature.aspx/UpdateBook",
                data: "{ID:'" + $.cookie("bookId") + "', ISBN:'" + $("#txtUpdateISBNKodu").val() + "', Name:'" + $("#txtUpdateKitapAdı").val() + "', SideName:'" + $("#txtUpdateSideName").val() + "', AuthorFullName:'" + $("#txtUpdateYazarAdSoyad").val() + "', TranslaterFullName:'" + $("#txtUpdateCevirenAdSoyad").val() + "', Publisher:'" + $("#txtUpdateYayinevi").val() + "', PublishingLocation:'" + $("#txtUpdateYayineviYeri").val() + "', Circulation:'" + ($("#txtUpdateBasimSayisi").val() === "" ? "0" : $("#txtUpdateBasimSayisi").val()) + "', PublishDate:'" + $("#txtUpdateYayinTarihi").val() + "', Language:'" + $('select[id="ddlUpdateLanguage"]').val() + "', DDCCode:'" + $("#txtUpdateDDCKodu").val() + "', PageNumber:'" + ($("#txtUpdatePageNumber").val() === "" ? "0" : $("#txtUpdatePageNumber").val()) + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $("#txtUpdateISBNKodu").val("");
                    $("#txtUpdateKitapAdı").val("");
                    $("#txtUpdateSideName").val("");
                    $("#txtUpdateYazarAdSoyad").val("");
                    $("#txtUpdateCevirenAdSoyad").val("");
                    $("#txtUpdateYayinevi").val("");
                    $("#txtUpdateYayineviYeri").val("");
                    $("#txtUpdateBasimSayisi").val("");
                    $("#txtUpdateYayinTarihi").val("");
                    $('select[id="ddlUpdateLanguage"]').val("");
                    $("#txtUpdateDDCKodu").val("");
                    $("#txtUpdatePageNumber").val("");
                    $("#txtEnterISBNKodu").val("");
                    toastr.success('Başarılı', 'Kitap Güncellendi');
                    $(".bookUpdateSteps").steps("previous");
                    $(".bookUpdateSteps").steps("previous");
                    $(".bookUpdateSteps").steps("previous");
                    $(".bookUpdateSteps").steps("previous");
                },
                failure: function (response) {
                },
                error: function (response) {
                    toastr.error('Hata', 'Kitap Güncellenemedi');
                }
            });
        }
        else {
            return false;
        }
    }
});