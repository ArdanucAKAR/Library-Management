<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Library_Management.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="row">
        <div class="col-xl-4 col-lg-6 col-12">
            <div class="card pull-up">
                <div class="card-content">
                    <div class="card-body">
                        <div class="media d-flex">
                            <div class="media-body text-left">
                                <h3 class="info">-</h3>
                                <h6>Ödünç Kitap Sayısı</h6>
                            </div>
                            <div>
                                <i class="icon-book-open info font-large-2 float-right"></i><i class="icon-arrow-left info font-large-2 float-right mr-1"></i>
                            </div>
                        </div>
                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                            <div class="progress-bar bg-gradient-x-info" role="progressbar" style="width: 80%"
                                aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 col-12">
            <div class="card pull-up">
                <div class="card-content">
                    <div class="card-body">
                        <div class="media d-flex">
                            <div class="media-body text-left">
                                <h3 class="warning">-</h3>
                                <h6>Aktif Üye Sayısı</h6>
                            </div>
                            <div>
                                <i class="icon-user-following warning font-large-2 float-right"></i>
                            </div>
                        </div>
                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                            <div class="progress-bar bg-gradient-x-warning" role="progressbar" style="width: 65%"
                                aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-6 col-12">
            <div class="card pull-up">
                <div class="card-content">
                    <div class="card-body">
                        <div class="media d-flex">
                            <div class="media-body text-left">
                                <h3 class="success">-</h3>
                                <h6>Üye Sayısı</h6>
                            </div>
                            <div>
                                <i class="icon-user success font-large-2 float-right"></i>
                            </div>
                        </div>
                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                            <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 75%"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row match-height">
        <div class="col-xl-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Zamanı Dolan Kitaplar</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div id="transport-options" class="toolbar-icons hidden">
                    <a href="#">7</a>
                    <a href="#">15</a>
                    <a href="#">∞</a>
                </div>
                <div class="card-content">
                    <div id="new-orders" class="media-list position-relative">
                        <div class="table-responsive">
                            <table id="new-orders-table" class="table table-hover table-xl mb-0">
                                <thead>
                                    <tr>
                                        <th class="border-top-0">Kitap Adı</th>
                                        <th class="border-top-0">Ödünç Alan Kişi</th>
                                        <th class="border-top-0">Bulundurma Süresi</th>
                                        <th class="border-top-0">Telefon Numarası</th>
                                        <th class="border-top-0">Süre Uzat</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-truncate">Tutunamayanlar</td>
                                        <td class="text-truncate">Ardanuc Akar</td>
                                        <td class="text-truncate">14</td>
                                        <td class="text-truncate">546 486 45 56</td>
                                        <td class="text-truncate">
                                            <div data-toolbar="transport-options" data-toolbar-animation="grow" class="btn-toolbar btn-toolbar-warning width-auto" data-toolbar-style="warning">
                                                <i class="la ft-plus"></i>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>
