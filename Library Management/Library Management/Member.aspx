<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="Library_Management.Member1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCss" runat="server">
    <link rel="stylesheet" type="text/css" href="<%#Page.ResolveUrl("~") %>/app-assets/vendors/css/tables/datatable/datatables.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="user-profile">
        <div class="row">
            <div class="col-12">
                <div class="card profile-with-cover">
                    <div class="media profil-cover-details w-100">
                        <div class="media-left pl-2 pt-2 pb-2">
                            <a href="#" class="profile-image">
                                <img src="../../../app-assets/images/portrait/small/avatar-s-8.png" class="rounded-circle img-border height-100" alt="Card image">
                            </a>
                        </div>
                        <div class="media-body pt-2 px-2">
                            <div class="row">
                                <div class="col">
                                    <h3 class="card-title"><%=personelnfo.FullName %></h3>
                                    <h6><strong>Adres:</strong> <%=personelnfo.Address %></h6>
                                    <h6><strong>Telefon:</strong> <%=contact.PhoneNumber %> </h6>
                                    <h6><strong>Mail:</strong> <%=contact.Mail %></h6>
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
                                                <td><%#Eval("_PublishInfo.AuthorFullName") %></td>
                                                <td><%#Eval("_PublishInfo.Publisher") %></td>
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
                                                <td><%#Eval("_PublishInfo.AuthorFullName") %></td>
                                                <td><%#Eval("_PublishInfo.Publisher") %></td>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/tables/datatable/datatables.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js" type="text/javascript"></script>
    <script src="<%#Page.ResolveUrl("~") %>/app-assets/js/scripts/tables/datatables/datatable-advanced.js" type="text/javascript"></script>
</asp:Content>
