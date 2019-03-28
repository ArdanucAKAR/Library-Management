var groupingTable = $('.row-grouping').DataTable({
    "columnDefs": [{
        "visible": false,
        "targets": 5
    }],
    "order": [
        [2, 'asc']
    ],
    "displayLength": 25,
    "drawCallback": function (settings) {
        var api = this.api();
        var rows = api.rows({
            page: 'current'
        }).nodes();
        var last = null;

        api.column(5, {
            page: 'current'
        }).data().each(function (group, i) {
            if (last !== group) {
                $(rows).eq(i).before(
                    '<tr class="group"><td colspan="5">' + group + '</td></tr>'
                );

                last = group;
            }
        });
    },
    "language": {
        "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Turkish.json"
    }
});

$('.row-grouping tbody').on('click', 'tr.group', function () {
    var currentOrder = table.order()[0];
    if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
        table.order([2, 'desc']).draw();
    }
    else {
        table.order([2, 'asc']).draw();
    }
});

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [year, month, day].join('-');
}

$('.memberList').DataTable();

//Member Add
$(".memberAddSteps").steps({
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
        else if (currentIndex === 1) {
            if (Page_ClientValidate("Step2")) {
                return true;
            }
            else {
                return false;
            }
        }
    },
    onFinished: function (event, currentIndex) {
        if (Page_ClientValidate("Step3")) {
            $.ajax({
                type: "POST",
                url: "/Member.aspx/AddMember",
                data: "{FullName:'" + ($("#txtAd").val() + " " + $("#txtSoyad").val()) + "', TCNumber:'" + $("#txtTCNumber").val() + "', Gender:'" + $('select[id="ddlGender"]').val() + "', EducationLevel:'" + $('select[id="ddlEducationLevel"]').val() + "', Birthday:'" + $("#txtBirthday").val() + "', Mail:'" + $("#txtMail").val() + "', PhoneNumber:'" + $("#txtPhoneNumber").val() + "', Address:'" + ($("#txtAddress").val() + " " + $("#txtDistrict").val() + "/" + $("#txtCity").val()) + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $("#txtAd").val("");
                    $("#txtSoyad").val("");
                    $("#txtTCNumber").val("");
                    $("#ddlGender").val(0);
                    $("#ddlEducationLevel").val(0);
                    $("#txtBirthday").val("");
                    $("#txtMail").val("");
                    $("#txtPhoneNumber").val("");
                    $("#txtAddress").val("");
                    $("#txtDistrict").val("");
                    $("#txtCity").val("");
                    toastr.success('Başarılı', 'Kayıt Eklendi');
                    $(".memberAddSteps").steps("previous");
                    $(".memberAddSteps").steps("previous");
                },
                failure: function (response) {
                },
                error: function (response) {
                    toastr.error('Hata', 'Kayıt Eklenemedi');
                }
            });
        }
        else {
            return false;
        }
    }
});

//Member Delete
$(".memberDeleteSteps").steps({
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
            url: "/Member.aspx/DeleteMember",
            data: "{ID : '" + $("#txtUserLibraryId").val() + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $("#txtUserLibraryId").val("");
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
$(".memberUpdateSteps").steps({
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
                    url: "/Member.aspx/GetMember",
                    data: "{ID : '" + $("#txtUpdateUserLibraryId").val() + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        $("#txtUpdateAdSoyad").val(data.PersonelInfo.FullName);
                        $("#txtUpdateTCNumber").val(data.PersonelInfo.TCNumber);
                        $("#ddlUpdateGender").val(data.PersonelInfo.Gender);
                        $("#ddlUpdateEducationLevel").val(data.PersonelInfo.EducationLevel);
                        $("#txtUpdateBirthday").val(formatDate(new Date(parseInt(data.PersonelInfo.Birthday.substr(6))).toDateString()));
                        $("#txtUpdateMail").val(data.Contact.Mail);
                        $("#txtUpdatePhoneNumber").val(data.Contact.PhoneNumber);
                        $("#txtUpdateAddress").val(data.Contact.Address);
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
            if (Page_ClientValidate("Step3")) {
                return true;
            }
            else {
                return false;
            }
        }
    },
    onFinished: function (event, currentIndex) {
        if (Page_ClientValidate("Step4")) {
            $.ajax({
                type: "POST",
                url: "/Member.aspx/UpdateMember",
                data: "{ID:'" + $("#txtUpdateUserLibraryId").val() + "', FullName:'" + $("#txtUpdateAdSoyad").val() + "', TCNumber:'" + $("#txtUpdateTCNumber").val() + "', Gender:'" + $('select[id="ddlUpdateGender"]').val() + "', EducationLevel:'" + $('select[id="ddlUpdateEducationLevel"]').val() + "', Birthday:'" + $("#txtUpdateBirthday").val() + "', Mail:'" + $("#txtUpdateMail").val() + "', PhoneNumber:'" + $("#txtUpdatePhoneNumber").val() + "', Address:'" + $("#txtUpdateAddress").val() + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $("#txtUpdateUserLibraryId").val("");
                    $("#txtUpdateAdSoyad").val("");
                    $("#txtUpdateTCNumber").val("");
                    $("#ddlUpdateGender").val("");
                    $("#ddlUpdateEducationLevel").val("");
                    $("#txtUpdateBirthday").val("");
                    $("#txtUpdateMail").val("");
                    $("#txtUpdatePhoneNumber").val("");
                    $("#txtUpdateAddress").val("");
                    toastr.success('Başarılı', 'Kayıt Güncellendi');
                    $(".memberUpdateSteps").steps("previous");
                    $(".memberUpdateSteps").steps("previous");
                    $(".memberUpdateSteps").steps("previous");
                    $(".memberUpdateSteps").steps("previous");
                },
                failure: function (response) {
                },
                error: function (response) {
                    toastr.error('Hata', 'Kayıt Güncellenemedi');
                }
            });
        }
        else {
            return false;
        }
    }
});