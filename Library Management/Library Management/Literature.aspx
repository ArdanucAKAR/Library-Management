<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Literature.aspx.cs" Inherits="Library_Management.Literature1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCss" runat="server">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/vendors/css/tables/datatable/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/css/plugins/forms/wizard.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/css/plugins/pickers/daterange/daterange.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/vendors/css/extensions/toastr.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/css/plugins/extensions/toastr.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <asp:MultiView ID="mvLiterature" runat="server">
        <asp:View ID="vLiteratureError" runat="server"></asp:View>
    </asp:MultiView>
    <asp:MultiView ID="mvBook" runat="server">
        <asp:View ID="vLiteratureBook" runat="server">
            <section>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body card-dashboard">
                                    <table class="table table-striped table-bordered row-grouping">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="repBooks" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("ID") %></td>
                                                        <td><%#Eval("ISBNCode") %></td>
                                                        <td><%#Eval("Name") %></td>
                                                        <td><%#Eval("SideName") %></td>
                                                        <td><%#Eval("PublishInfo.AuthorFullName") %></td>
                                                        <td><%#Eval("PublishInfo.Publisher") %></td>
                                                        <td><%#Eval("PublishInfo.PublishingLocation") %></td>
                                                        <td><%#Eval("PublishInfo.Circulation") %></td>
                                                        <td><%#Eval("PublishInfo.PublishDate") %></td>
                                                        <td><%#Eval("TranslaterFullName") %></td>
                                                        <td><%#Eval("Language") %></td>
                                                        <td><%#Eval("DDCCode") %></td>
                                                        <td><%#Eval("PageNumber") %></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </asp:View>
        <asp:View ID="vLiteratureBookAdd" runat="server">
            <section id="icon-bookAdd">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <div class="bookAddSteps wizard-circle">
                                        <!-- Step 1 -->
                                        <h6><i class="step-icon la la-book"></i>Kitap Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Kitap Adı:</label>
                                                        <asp:TextBox ID="txtKitapAdı" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvKitapAdı" runat="server" ErrorMessage="Kitap Adı Boş Geçilemez" ControlToValidate="txtKitapAdı" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yazar Ad Soyad:</label>
                                                        <asp:TextBox ID="txtYazarAdSoyad" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvYazarAdSoyad" runat="server" ErrorMessage="Yazar Boş Geçilemez" ControlToValidate="txtYazarAdSoyad" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yan İsim:</label>
                                                        <asp:TextBox ID="txtYanİsim" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Sayfa Sayısı:</label>
                                                        <asp:TextBox ID="txtSayfaSayisi" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:CompareValidator ID="cvSayfaSayisi" runat="server" ErrorMessage="Sayfa Sayısı Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtSayfaSayisi" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>ISBN Kodu:</label>
                                                        <asp:TextBox ID="txtISBNKodu" runat="server" MaxLength="13" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvISBNKodu" runat="server" ErrorMessage="ISBN Kodu Boş Geçilemez" ControlToValidate="txtISBNKodu" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="cvISBNKodu" runat="server" ErrorMessage="ISBN Kodu Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtISBNKodu" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>DDC Kodu:</label>
                                                        <asp:TextBox ID="txtDDCKodu" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 2 -->
                                        <h6><i class="step-icon icon icon-flag"></i>Çevirmen Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12 mb-2">
                                                    <asp:CheckBox ID="cbTranslate" runat="server" ClientIDMode="Static" />
                                                    Çeviri Mi ?
                                                </div>
                                                <br />
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Çeviren Ad Soyad:</label>
                                                        <asp:TextBox ID="txtCevirenAdSoyad" runat="server" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static" Enabled="false"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCevirenAdSoyad" runat="server" ErrorMessage="Çeviren Boş Geçilemez" ControlToValidate="txtCevirenAdSoyad" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Kitabın Orijinal Dili:</label>
                                                        <asp:DropDownList ID="ddlLanguage" runat="server" CssClass="form-control" ClientIDMode="Static" Enabled="false" ValidationGroup="Step2"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator InitialValue="1" ID="rfvLanguage" Display="Dynamic" ValidationGroup="Step2" runat="server" ControlToValidate="ddlLanguage" ErrorMessage="Kitap Dili Boş Geçilemez" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 3 -->
                                        <h6><i class="step-icon icon icon-home"></i>Yayıncı Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yayınevi:</label>
                                                        <asp:TextBox ID="txtYayinevi" runat="server" CssClass="form-control" ValidationGroup="Step3" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvYayinevi" runat="server" ErrorMessage="Yayınevi Boş Geçilemez" ControlToValidate="txtYayinevi" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yayınevi Yeri:</label>
                                                        <asp:TextBox ID="txtYayineviYeri" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yayın Tarihi:</label>
                                                        <asp:TextBox ID="txtYayinTarihi" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Basım Sayısı:</label>
                                                        <asp:TextBox ID="txtBasimSayisi" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </asp:View>
        <asp:View ID="vLiteratureBookDelete" runat="server">
            <section id="icon-bookDelete">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <div class="bookDeleteSteps wizard-circle">
                                        <!-- Step 1 -->
                                        <h6><i class="step-icon icon icon-user"></i>Kullanıcı Kütüphane Numarası</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Kitabın ISBN Numarası:</label>
                                                        <asp:TextBox ID="txtDeleteISBNKodu" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDeleteISBNKodu" runat="server" ErrorMessage="ISBN Kodu Boş Geçilemez" ControlToValidate="txtDeleteISBNKodu" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="cvDeleteISBNKodu" runat="server" ErrorMessage="ISBN Kodu Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtDeleteISBNKodu" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 2 -->
                                        <h6><i class="step-icon la la-check"></i>Onay</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <h5 class="text-center"><%=txtDeleteISBNKodu.Text %> ISBN Kodlu Kitabı Silmek İstediğinize Emin Misiniz?</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </asp:View>
        <asp:View ID="vLiteratureBookUpdate" runat="server">
            <section id="icon-bookUpdate">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <div class="bookUpdateSteps wizard-circle">
                                        <!-- Step 1 -->
                                        <h6><i class="step-icon icon icon-user"></i>ISBN Kodu</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Kullanıcı Kütüphane Numarası:</label>
                                                        <asp:TextBox ID="txtEnterISBNKodu" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvEnterISBNKodu" runat="server" ErrorMessage="ISBN Kodu Boş Geçilemez" ControlToValidate="txtEnterISBNKodu" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="cvEnterISBNKodu" runat="server" ErrorMessage="ISBN Kodu Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtEnterISBNKodu" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 2 -->
                                        <h6><i class="step-icon la la-book"></i>Kitap Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Kitap Adı:</label>
                                                        <asp:TextBox ID="txtUpdateKitapAdı" runat="server" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateKitapAdı" runat="server" ErrorMessage="Kitap Adı Boş Geçilemez" ControlToValidate="txtUpdateKitapAdı" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yazar Ad Soyad:</label>
                                                        <asp:TextBox ID="txtUpdateYazarAdSoyad" runat="server" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateYazarAdSoyad" runat="server" ErrorMessage="Yazar Boş Geçilemez" ControlToValidate="txtUpdateYazarAdSoyad" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yan İsim:</label>
                                                        <asp:TextBox ID="txtUpdateSideName" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Sayfa Sayısı:</label>
                                                        <asp:TextBox ID="txtUpdatePageNumber" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:CompareValidator ID="cvUpdatePageNumber" runat="server" ErrorMessage="Sayfa Sayısı Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtUpdatePageNumber" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>ISBN Kodu:</label>
                                                        <asp:TextBox ID="txtUpdateISBNKodu" runat="server" MaxLength="13" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateISBNKodu" runat="server" ErrorMessage="ISBN Kodu Boş Geçilemez" ControlToValidate="txtUpdateISBNKodu" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="cvUpdateISBNKodu" runat="server" ErrorMessage="ISBN Kodu Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtUpdateISBNKodu" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>DDC Kodu:</label>
                                                        <asp:TextBox ID="txtUpdateDDCKodu" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 3 -->
                                        <h6><i class="step-icon icon icon-flag"></i>Çevirmen Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12 mb-2">
                                                    <asp:CheckBox ID="cbUpdateTranslate" runat="server" ClientIDMode="Static" />
                                                    Çeviri Mi ?
                                                </div>
                                                <br />
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Çeviren Ad Soyad:</label>
                                                        <asp:TextBox ID="txtUpdateCevirenAdSoyad" runat="server" CssClass="form-control" ValidationGroup="Step3" ClientIDMode="Static" Enabled="false"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateCevirenAdSoyad" runat="server" ErrorMessage="Çeviren Boş Geçilemez" ControlToValidate="txtUpdateCevirenAdSoyad" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Kitabın Orijinal Dili:</label>
                                                        <asp:DropDownList ID="ddlUpdateLanguage" runat="server" CssClass="form-control" ClientIDMode="Static" Enabled="false" ValidationGroup="Step3"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator InitialValue="1" ID="rfvUpdateLanguage" Display="Dynamic" ValidationGroup="Step3" runat="server" ControlToValidate="ddlUpdateLanguage" ErrorMessage="Kitap Dili Boş Geçilemez" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 4 -->
                                        <h6><i class="step-icon icon icon-home"></i>Yayıncı Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yayınevi:</label>
                                                        <asp:TextBox ID="txtUpdateYayinevi" runat="server" CssClass="form-control" ValidationGroup="Step4" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateYayinevi" runat="server" ErrorMessage="Yayınevi Boş Geçilemez" ControlToValidate="txtUpdateYayinevi" Display="Dynamic" ValidationGroup="Step4" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yayınevi Yeri:</label>
                                                        <asp:TextBox ID="txtUpdateYayineviYeri" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Yayın Tarihi:</label>
                                                        <asp:TextBox ID="txtUpdateYayinTarihi" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Basım Sayısı:</label>
                                                        <asp:TextBox ID="txtUpdateBasimSayisi" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </asp:View>
        <asp:View ID="vLiteratureBookLoanAdd" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookLoanDelete" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookLoanUpdate" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookReservationAdd" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookReservationDelete" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookReservationUpdate" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookOrderAdd" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookOrderDelete" runat="server"></asp:View>
        <asp:View ID="vLiteratureBookOrderUpdate" runat="server"></asp:View>
    </asp:MultiView>
    <asp:MultiView ID="mvMagazine" runat="server">
        <asp:View ID="vLiteratureMagazine" runat="server">
            <section>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body card-dashboard">
                                    <table class="table table-striped table-bordered memberList">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="repMagazines" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("ID") %></td>
                                                        <td><%#Eval("ISSNCode") %></td>
                                                        <td><%#Eval("Name") %></td>
                                                        <td><%#Eval("PublishInfo.AuthorFullName") %></td>
                                                        <td><%#Eval("PublishInfo.Publisher") %></td>
                                                        <td><%#Eval("PublishInfo.PublishingLocation") %></td>
                                                        <td><%#Eval("PublishInfo.Circulation") %></td>
                                                        <td><%#Eval("PublishInfo.PublishDate") %></td>
                                                        <td><%#Eval("Language") %></td>
                                                        <td><%#Eval("PageNumber") %></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                                <th>Start date</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </asp:View>
        <asp:View ID="vLiteratureMagazineAdd" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineDelete" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineUpdate" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineLoanAdd" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineLoanDelete" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineLoanUpdate" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineReservationAdd" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineReservationDelete" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineReservationUpdate" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineOrderAdd" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineOrderDelete" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazineOrderUpdate" runat="server"></asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/tables/datatable/datatables.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/extensions/jquery.steps.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/extensions/toastr.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/js/scripts/cookie/jquery.cookie.js"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/js/scripts/Literature.js"></script>
</asp:Content>
