<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="Library_Management.Member1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCss" runat="server">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/vendors/css/tables/datatable/datatables.min.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/css/plugins/forms/wizard.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/css/plugins/pickers/daterange/daterange.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/vendors/css/extensions/toastr.css">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/css/plugins/extensions/toastr.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <asp:MultiView ID="mvMember" runat="server">
        <asp:View ID="vMemberDefault" runat="server">
            <section id="dom">
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
                                                <th>Start date</th>
                                                <th>Start date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="repMember" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("ID") %></td>
                                                        <td><%#Eval("PersonelInfo.FullName") %></td>
                                                        <td><%#Eval("PersonelInfo.TCNumber") %></td>
                                                        <td><%#Eval("PersonelInfo.Age") %></td>
                                                        <td><%#Eval("PersonelInfo.EducationLevel") %></td>
                                                        <td><%#Eval("PersonelInfo.Gender") %></td>
                                                        <td><%#Eval("MemberLibraryInfo.LibraryPoint") %></td>
                                                        <td><%#Eval("MemberLibraryInfo.RegisterDate") %></td>
                                                        <td><%#Eval("MemberLibraryInfo.Status") %></td>
                                                        <td><%#Eval("Contact.Address") %></td>
                                                        <td><%#Eval("Contact.Mail") %></td>
                                                        <td><%#Eval("Contact.PhoneNumber") %></td>
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
        <asp:View ID="vMemberProfile" runat="server">
            <div id="user-profile">
                <div class="row">
                    <div class="col-12">
                        <div class="card profile-with-cover">
                            <div class="media profil-cover-details w-100">
                                <div class="media-left pl-2 pt-2 pb-2">
                                    <a href="#" class="profile-image">
                                        <img src="<%#Page.ResolveUrl("~") %>/app-assets/images/portrait/small/avatar-s-8.png" class="rounded-circle img-border height-100" alt="Card image">
                                    </a>
                                </div>
                                <div class="media-body pt-2 px-2">
                                    <div class="row">
                                        <div class="col">
                                            <h3 class="card-title"><%=member.PersonelInfo.FullName%></h3>
                                            <h6><strong>Adres:</strong> <%=member.Contact.Address %></h6>
                                            <h6><strong>Telefon:</strong> <%=member.Contact.PhoneNumber %> </h6>
                                            <h6><strong>Mail:</strong> <%=member.Contact.Mail %></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section id="row-grouping">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body card-dashboard">
                                    <table class="table table-striped table-bordered row-grouping">
                                        <thead>
                                            <tr>
                                                <th>Demirbaş Numarası</th>
                                                <th>Eser İsmi</th>
                                                <th>Yazarı</th>
                                                <th>Yayıncısı</th>
                                                <th>IS Kodu</th>
                                                <th>Eser Türü</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="repBook" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("ID") %></td>
                                                        <td><%#Eval("Name") %></td>
                                                        <td><%#Eval("PublishInfo.AuthorFullName") %></td>
                                                        <td><%#Eval("PublishInfo.Publisher") %></td>
                                                        <td><%#Eval("ISBNCode") %></td>
                                                        <td>Kitap</td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <asp:Repeater ID="repMagazine" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("ID") %></td>
                                                        <td><%#Eval("Name") %></td>
                                                        <td><%#Eval("PublishInfo.AuthorFullName") %></td>
                                                        <td><%#Eval("PublishInfo.Publisher") %></td>
                                                        <td><%#Eval("ISSNCode") %></td>
                                                        <td>Dergi</td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Demirbaş Numarası</th>
                                                <th>Eser İsmi</th>
                                                <th>Yazarı</th>
                                                <th>Yayıncısı</th>
                                                <th>IS Kodu</th>
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
        <asp:View ID="vMemberAdd" runat="server">
            <section id="icon-memberAdd">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <div class="memberAddSteps wizard-circle">
                                        <!-- Step 1 -->
                                        <h6><i class="step-icon icon icon-user"></i>Kullanıcı Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Ad:</label>
                                                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvAd" runat="server" ErrorMessage="Ad Boş Geçilemez" ControlToValidate="txtAd" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Soyad:</label>
                                                        <asp:TextBox ID="txtSoyad" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvSoyad" runat="server" ErrorMessage="Soyad Boş Geçilemez" ControlToValidate="txtSoyad" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>TC Kimlik Numarası:</label>
                                                        <asp:TextBox ID="txtTCNumber" runat="server" MaxLength="11" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTCNumber" runat="server" ErrorMessage="TC Numarası Boş Geçilemez" ControlToValidate="txtTCNumber" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="revTCNumber" ControlToValidate="txtTCNumber" runat="server" ErrorMessage="TC Kimlik Numarası Sadece Sayı Olabilir" ValidationExpression="\d+" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RegularExpressionValidator>
                                                        <asp:CompareValidator ID="cvTCNumber" runat="server" ErrorMessage="TC Numarası Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtTCNumber" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Cinsiyet:</label>
                                                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator InitialValue="0" ID="rfvGender" Display="Dynamic" ValidationGroup="Step1" runat="server" ControlToValidate="ddlGender" ErrorMessage="Cinsiyet Boş Geçilemez" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Eğitim Düzeyi:</label>
                                                        <asp:DropDownList ID="ddlEducationLevel" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator InitialValue="0" ID="rfvEducationLevel" Display="Dynamic" ValidationGroup="Step1" runat="server" ControlToValidate="ddlEducationLevel" ErrorMessage="Eğitim Düzeyi Boş Geçilemez" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Doğum Tarihi:</label>
                                                        <asp:TextBox ID="txtBirthday" runat="server" MaxLength="11" CssClass="form-control" ValidationGroup="Step1" TextMode="Date" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvBirthday" runat="server" ErrorMessage="Doğum Tarihi Boş Geçilemez" ControlToValidate="txtBirthday" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 2 -->
                                        <h6><i class="step-icon la la-phone"></i>İletişim Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Mail:</label>
                                                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvMail" runat="server" ErrorMessage="Mail Boş Geçilemez" ControlToValidate="txtMail" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="revMail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtMail" ErrorMessage="Mail Formatınız Uygun Değil" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Telefon Numarası:</label>
                                                        <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ErrorMessage="Telefon Boş Geçilemez" ControlToValidate="txtPhoneNumber" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ErrorMessage="Telefon Formatınız Uygun Değildir" ControlToValidate="txtPhoneNumber" ValidationExpression="^[01]?[- .]?(([2-9]\d{2})|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 3 -->
                                        <h6><i class="step-icon icon icon-home"></i>Adres Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Adres:</label>
                                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ValidationGroup="Step3" TextMode="MultiLine" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Adres Boş Geçilemez" ControlToValidate="txtAddress" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>İlçe :</label>
                                                        <asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control" ValidationGroup="Step3" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvDistrict" runat="server" ErrorMessage="İlçe Boş Geçilemez" ControlToValidate="txtDistrict" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>İl :</label>
                                                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" ValidationGroup="Step3" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="İl Boş Geçilemez" ControlToValidate="txtCity" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RequiredFieldValidator>
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
        <asp:View ID="vMemberUpdate" runat="server">
            <section id="icon-memberUpdate">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <div class="memberUpdateSteps wizard-circle">
                                        <!-- Step 1 -->
                                        <h6><i class="step-icon icon icon-user"></i>Kullanıcı Kütüphane Numarası</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Kullanıcı Kütüphane Numarası:</label>
                                                        <asp:TextBox ID="txtUpdateUserLibraryId" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateUserLibraryId" runat="server" ErrorMessage="Kullanıcı Kütüphane Numarası Boş Geçilemez" ControlToValidate="txtUpdateUserLibraryId" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="cvUpdateUserLibraryId" runat="server" ErrorMessage="Kullanıcı Kütüphane Numarası Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtUpdateUserLibraryId" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 2 -->
                                        <h6><i class="step-icon icon icon-user"></i>Kullanıcı Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Ad:</label>
                                                        <asp:TextBox ID="txtUpdateAdSoyad" runat="server" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateAdSoyad" runat="server" ErrorMessage="Ad Soyad Boş Geçilemez" ControlToValidate="txtUpdateAdSoyad" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>TC Kimlik Numarası:</label>
                                                        <asp:TextBox ID="txtUpdateTCNumber" runat="server" MaxLength="11" CssClass="form-control" ValidationGroup="Step2" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateTCNumber" runat="server" ErrorMessage="TC Numarası Boş Geçilemez" ControlToValidate="txtUpdateTCNumber" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="revUpdateTCNumber" ControlToValidate="txtUpdateTCNumber" runat="server" ErrorMessage="TC Kimlik Numarası Sadece Sayı Olabilir" ValidationExpression="\d+" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RegularExpressionValidator>
                                                        <asp:CompareValidator ID="cvUpdateTCNumber" runat="server" ErrorMessage="TC Numarası Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtUpdateTCNumber" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Cinsiyet:</label>
                                                        <asp:DropDownList ID="ddlUpdateGender" runat="server" CssClass="form-control" ClientIDMode="Static" ValidationGroup="Step2"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator InitialValue="0" ID="rfvUpdateGender" Display="Dynamic" ValidationGroup="Step2" runat="server" ControlToValidate="ddlUpdateGender" ErrorMessage="Cinsiyet Boş Geçilemez" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Eğitim Düzeyi:</label>
                                                        <asp:DropDownList ID="ddlUpdateEducationLevel" runat="server" CssClass="form-control" ClientIDMode="Static" ValidationGroup="Step2"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator InitialValue="0" ID="rfvUpdateEducationLevel" Display="Dynamic" ValidationGroup="Step2" runat="server" ControlToValidate="ddlUpdateEducationLevel" ErrorMessage="Eğitim Düzeyi Boş Geçilemez" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label>Doğum Tarihi:</label>
                                                        <asp:TextBox ID="txtUpdateBirthday" runat="server" MaxLength="11" CssClass="form-control" ValidationGroup="Step2" TextMode="Date" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateBirthday" runat="server" ErrorMessage="Doğum Tarihi Boş Geçilemez" ControlToValidate="txtUpdateBirthday" Display="Dynamic" ValidationGroup="Step2" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 3 -->
                                        <h6><i class="step-icon la la-phone"></i>İletişim Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Mail:</label>
                                                        <asp:TextBox ID="txtUpdateMail" runat="server" CssClass="form-control" ValidationGroup="Step3" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdateMail" runat="server" ErrorMessage="Mail Boş Geçilemez" ControlToValidate="txtUpdateMail" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="revUpdateMail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtUpdateMail" ErrorMessage="Mail Formatınız Uygun Değil" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Telefon Numarası:</label>
                                                        <asp:TextBox ID="txtUpdatePhoneNumber" runat="server" CssClass="form-control" ValidationGroup="Step3" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUpdatePhoneNumber" runat="server" ErrorMessage="Telefon Boş Geçilemez" ControlToValidate="txtUpdatePhoneNumber" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="revUpdatePhoneNumber" runat="server" ErrorMessage="Telefon Formatınız Uygun Değildir" ControlToValidate="txtUpdatePhoneNumber" ValidationExpression="^[01]?[- .]?(([2-9]\d{2})|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" Display="Dynamic" ValidationGroup="Step3" ForeColor="DarkRed"></asp:RegularExpressionValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <!-- Step 4 -->
                                        <h6><i class="step-icon icon icon-home"></i>Adres Bilgileri</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Adres:</label>
                                                        <asp:TextBox ID="txtUpdateAddress" runat="server" CssClass="form-control" ValidationGroup="Step4" TextMode="MultiLine" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="revUpdateAddress" runat="server" ErrorMessage="Adres Boş Geçilemez" ControlToValidate="txtUpdateAddress" Display="Dynamic" ValidationGroup="Step4" ForeColor="DarkRed"></asp:RequiredFieldValidator>
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
        <asp:View ID="vMemberDelete" runat="server">
            <section id="icon-memberDelete">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <div class="memberDeleteSteps wizard-circle">
                                        <!-- Step 1 -->
                                        <h6><i class="step-icon icon icon-user"></i>Kullanıcı Kütüphane Numarası</h6>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Kullanıcı Kütüphane Numarası:</label>
                                                        <asp:TextBox ID="txtUserLibraryId" runat="server" CssClass="form-control" ValidationGroup="Step1" ClientIDMode="Static"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvUserLibraryId" runat="server" ErrorMessage="Kullanıcı Kütüphane Numarası Boş Geçilemez" ControlToValidate="txtUserLibraryId" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator ID="cvUserLibraryId" runat="server" ErrorMessage="Kullanıcı Kütüphane Numarası Sayı Olmalıdır" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtUserLibraryId" Display="Dynamic" ValidationGroup="Step1" ForeColor="DarkRed"></asp:CompareValidator>
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
                                                        <h5 class="text-center">Silmek İstediğinize Emin Misiniz?</h5>
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
        <asp:View ID="vMemberNotFound" runat="server">
            <div>Bulunamadı</div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/tables/datatable/datatables.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/extensions/jquery.steps.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/extensions/toastr.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/js/scripts/Member.js"></script>
</asp:Content>
