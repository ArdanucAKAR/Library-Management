﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Library_Management.index" %>

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


    <!-- Products sell and New Orders -->
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
                                        <th class="border-top-0">Süre Uzat</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-truncate"></td>
                                        <td class="text-truncate"></td>
                                        <td class="text-truncate"></td>
                                        <td class="text-truncate text-center">
                                            <div data-toolbar="transport-options" data-toolbar-animation="grow" class="btn-toolbar btn-toolbar-warning mx-auto width-auto" data-toolbar-style="warning">
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
        <div class="col-xl-12 col-12" id="ecommerceChartView">
            <div class="card card-shadow">
                <div class="card-header card-header-transparent py-20">
                    <div class="btn-group dropdown">
                        <a href="#" class="text-body dropdown-toggle blue-grey-700" data-toggle="dropdown">PRODUCTS SALES</a>
                        <div class="dropdown-menu animate" role="menu">
                            <a class="dropdown-item" href="#" role="menuitem">Sales</a>
                            <a class="dropdown-item" href="#" role="menuitem">Total sales</a>
                            <a class="dropdown-item" href="#" role="menuitem">profit</a>
                        </div>
                    </div>
                    <ul class="nav nav-pills nav-pills-rounded chart-action float-right btn-group" role="group">
                        <li class="nav-item"><a class="active nav-link" data-toggle="tab" href="#scoreLineToDay">Day</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#scoreLineToWeek">Week</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#scoreLineToMonth">Month</a></li>
                    </ul>
                </div>
                <div class="widget-content tab-content bg-white p-20">
                    <div class="ct-chart tab-pane active scoreLineShadow" id="scoreLineToDay"></div>
                    <div class="ct-chart tab-pane scoreLineShadow" id="scoreLineToWeek"></div>
                    <div class="ct-chart tab-pane scoreLineShadow" id="scoreLineToMonth"></div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Products sell and New Orders -->
    <!-- Recent Transactions -->
    <div class="row">
        <div id="recent-transactions" class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Recent Transactions</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a class="btn btn-sm btn-danger box-shadow-2 round btn-min-width pull-right"
                                href="invoice-summary.html" target="_blank">Invoice Summary</a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content">
                    <div class="table-responsive">
                        <table id="recent-orders" class="table table-hover table-xl mb-0">
                            <thead>
                                <tr>
                                    <th class="border-top-0">Status</th>
                                    <th class="border-top-0">Invoice#</th>
                                    <th class="border-top-0">Customer Name</th>
                                    <th class="border-top-0">Products</th>
                                    <th class="border-top-0">Categories</th>
                                    <th class="border-top-0">Shipping</th>
                                    <th class="border-top-0">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-truncate"><i class="la la-dot-circle-o success font-medium-1 mr-1"></i>Paid</td>
                                    <td class="text-truncate"><a href="#">INV-001001</a></td>
                                    <td class="text-truncate">
                                        <span class="avatar avatar-xs">
                                            <img class="box-shadow-2" src="../../../app-assets/images/portrait/small/avatar-s-4.png"
                                                alt="avatar">
                                        </span>
                                        <span>Elizabeth W.</span>
                                    </td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-1.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-2.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Rebecca Jones"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-4.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li class="avatar avatar-sm">
                                                <span class="badge badge-info">+1 more</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-danger round">Food</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 25%"
                                                aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 1200.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate"><i class="la la-dot-circle-o danger font-medium-1 mr-1"></i>Declined</td>
                                    <td class="text-truncate"><a href="#">INV-001002</a></td>
                                    <td class="text-truncate">
                                        <span class="avatar avatar-xs">
                                            <img class="box-shadow-2" src="../../../app-assets/images/portrait/small/avatar-s-5.png"
                                                alt="avatar">
                                        </span>
                                        <span>Doris R.</span>
                                    </td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-5.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-6.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li class="avatar avatar-sm">
                                                <span class="badge badge-info">+2 more</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-warning round">Electronics</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-warning" role="progressbar" style="width: 45%"
                                                aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 1850.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate"><i class="la la-dot-circle-o warning font-medium-1 mr-1"></i>Pending</td>
                                    <td class="text-truncate"><a href="#">INV-001003</a></td>
                                    <td class="text-truncate">
                                        <span class="avatar avatar-xs">
                                            <img class="box-shadow-2" src="../../../app-assets/images/portrait/small/avatar-s-6.png"
                                                alt="avatar">
                                        </span>
                                        <span>Megan S.</span>
                                    </td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-2.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-5.jpg"
                                                    alt="Avatar">
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-success round">Groceries</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 75%"
                                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 3200.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate"><i class="la la-dot-circle-o success font-medium-1 mr-1"></i>Paid</td>
                                    <td class="text-truncate"><a href="#">INV-001004</a></td>
                                    <td class="text-truncate">
                                        <span class="avatar avatar-xs">
                                            <img class="box-shadow-2" src="../../../app-assets/images/portrait/small/avatar-s-7.png"
                                                alt="avatar">
                                        </span>
                                        <span>Andrew D.</span>
                                    </td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-6.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-1.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li class="avatar avatar-sm">
                                                <span class="badge badge-info">+1 more</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-info round">Apparels</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-info" role="progressbar" style="width: 65%"
                                                aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 4500.00</td>
                                </tr>
                                <tr>
                                    <td class="text-truncate"><i class="la la-dot-circle-o success font-medium-1 mr-1"></i>Paid</td>
                                    <td class="text-truncate"><a href="#">INV-001005</a></td>
                                    <td class="text-truncate">
                                        <span class="avatar avatar-xs">
                                            <img class="box-shadow-2" src="../../../app-assets/images/portrait/small/avatar-s-9.png"
                                                alt="avatar">
                                        </span>
                                        <span>Walter R.</span>
                                    </td>
                                    <td class="text-truncate p-1">
                                        <ul class="list-unstyled users-list m-0">
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Kimberly Simmons"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-5.jpg"
                                                    alt="Avatar">
                                            </li>
                                            <li data-toggle="tooltip" data-popup="tooltip-custom" data-original-title="Willie Torres"
                                                class="avatar avatar-sm pull-up">
                                                <img class="media-object rounded-circle no-border-top-radius no-border-bottom-radius"
                                                    src="../../../app-assets/images/portfolio/portfolio-3.jpg"
                                                    alt="Avatar">
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-outline-danger round">Food</button>
                                    </td>
                                    <td>
                                        <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                            <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 35%"
                                                aria-valuenow="35" aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-truncate">$ 1500.00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Recent Transactions -->
    <!--Recent Orders & Monthly Sales -->
    <div class="row match-height">
        <div class="col-xl-8 col-lg-12">
            <div class="card">
                <div class="card-content ">
                    <div id="cost-revenue" class="height-250 position-relative"></div>
                </div>
                <div class="card-footer">
                    <div class="row mt-1">
                        <div class="col-3 text-center">
                            <h6 class="text-muted">Total Products</h6>
                            <h2 class="block font-weight-normal">18.6 k</h2>
                            <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                <div class="progress-bar bg-gradient-x-info" role="progressbar" style="width: 70%"
                                    aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                </div>
                            </div>
                        </div>
                        <div class="col-3 text-center">
                            <h6 class="text-muted">Total Sales</h6>
                            <h2 class="block font-weight-normal">64.54 M</h2>
                            <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                <div class="progress-bar bg-gradient-x-warning" role="progressbar" style="width: 60%"
                                    aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                </div>
                            </div>
                        </div>
                        <div class="col-3 text-center">
                            <h6 class="text-muted">Total Cost</h6>
                            <h2 class="block font-weight-normal">24.38 B</h2>
                            <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                <div class="progress-bar bg-gradient-x-danger" role="progressbar" style="width: 40%"
                                    aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                </div>
                            </div>
                        </div>
                        <div class="col-3 text-center">
                            <h6 class="text-muted">Total Revenue</h6>
                            <h2 class="block font-weight-normal">36.72 M</h2>
                            <div class="progress progress-sm mt-1 mb-0 box-shadow-2">
                                <div class="progress-bar bg-gradient-x-success" role="progressbar" style="width: 90%"
                                    aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-12">
            <div class="card">
                <div class="card-content">
                    <div class="card-body sales-growth-chart">
                        <div id="monthly-sales" class="height-250"></div>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="chart-title mb-1 text-center">
                        <h6>Total monthly Sales.</h6>
                    </div>
                    <div class="chart-stats text-center">
                        <a href="#" class="btn btn-sm btn-danger box-shadow-2 mr-1">Statistics <i class="ft-bar-chart"></i></a>
                        <span class="text-muted">for the last year.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/Recent Orders & Monthly Sales -->
    <!-- Basic Horizontal Timeline -->
    <div class="row match-height">
        <div class="col-xl-4 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Basic Card</h4>
                </div>
                <div class="card-content">
                    <img class="img-fluid" src="../../../app-assets/images/carousel/05.jpg" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-text">
                            Some quick example text to build on the card title and make up
                    the bulk of the card's content.
                        </p>
                        <a href="#" class="card-link">Card link</a>
                        <a href="#" class="card-link">Another link</a>
                    </div>
                </div>
                <div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
                    <span class="float-left">3 hours ago</span>
                    <span class="float-right">
                        <a href="#" class="card-link">Read More <i class="fa fa-angle-right"></i></a>
                    </span>
                </div>
            </div>
        </div>
        <div class="col-xl-8 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Horizontal Timeline</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        <div class="card-text">
                            <section class="cd-horizontal-timeline">
                                <div class="timeline">
                                    <div class="events-wrapper">
                                        <div class="events">
                                            <ol>
                                                <li><a href="#0" data-date="16/01/2015" class="selected">16 Jan</a></li>
                                                <li><a href="#0" data-date="28/02/2015">28 Feb</a></li>
                                                <li><a href="#0" data-date="20/04/2015">20 Mar</a></li>
                                                <li><a href="#0" data-date="20/05/2015">20 May</a></li>
                                                <li><a href="#0" data-date="09/07/2015">09 Jul</a></li>
                                                <li><a href="#0" data-date="30/08/2015">30 Aug</a></li>
                                                <li><a href="#0" data-date="15/09/2015">15 Sep</a></li>
                                            </ol>
                                            <span class="filling-line" aria-hidden="true"></span>
                                        </div>
                                        <!-- .events -->
                                    </div>
                                    <!-- .events-wrapper -->
                                    <ul class="cd-timeline-navigation">
                                        <li><a href="#0" class="prev inactive">Prev</a></li>
                                        <li><a href="#0" class="next">Next</a></li>
                                    </ul>
                                    <!-- .cd-timeline-navigation -->
                                </div>
                                <!-- .timeline -->
                                <div class="events-content">
                                    <ol>
                                        <li class="selected" data-date="16/01/2015">
                                            <blockquote class="blockquote border-0">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object img-xl mr-1" src="../../../app-assets/images/portrait/small/avatar-s-5.png"
                                                            alt="Generic placeholder image">
                                                    </div>
                                                    <div class="media-body">
                                                        Sometimes life is going to hit you in the head with a brick. Don't lose faith.
                               
                                                    </div>
                                                </div>
                                                <footer class="blockquote-footer text-right">
                                                    Steve Jobs
                               
                                                    <cite title="Source Title">Entrepreneur</cite>
                                                </footer>
                                            </blockquote>
                                            <p class="lead mt-2">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia,
                              fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur
                              aspernatur at.
                           
                                            </p>
                                        </li>
                                        <li data-date="28/02/2015">
                                            <blockquote class="blockquote border-0">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object img-xl mr-1" src="../../../app-assets/images/portrait/small/avatar-s-6.png"
                                                            alt="Generic placeholder image">
                                                    </div>
                                                    <div class="media-body">
                                                        Sometimes life is going to hit you in the head with a brick. Don't lose faith.
                               
                                                    </div>
                                                </div>
                                                <footer class="blockquote-footer text-right">
                                                    Steve Jobs
                               
                                                    <cite title="Source Title">Entrepreneur</cite>
                                                </footer>
                                            </blockquote>
                                            <p class="lead mt-2">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia,
                              fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur
                              aspernatur at.
                           
                                            </p>
                                        </li>
                                        <li data-date="20/04/2015">
                                            <blockquote class="blockquote border-0">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object img-xl mr-1" src="../../../app-assets/images/portrait/small/avatar-s-7.png"
                                                            alt="Generic placeholder image">
                                                    </div>
                                                    <div class="media-body">
                                                        Sometimes life is going to hit you in the head with a brick. Don't lose faith.
                               
                                                    </div>
                                                </div>
                                                <footer class="blockquote-footer text-right">
                                                    Steve Jobs
                               
                                                    <cite title="Source Title">Entrepreneur</cite>
                                                </footer>
                                            </blockquote>
                                            <p class="lead mt-2">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia,
                              fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur
                              aspernatur at.
                           
                                            </p>
                                        </li>
                                        <li data-date="20/05/2015">
                                            <blockquote class="blockquote border-0">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object img-xl mr-1" src="../../../app-assets/images/portrait/small/avatar-s-8.png"
                                                            alt="Generic placeholder image">
                                                    </div>
                                                    <div class="media-body">
                                                        Sometimes life is going to hit you in the head with a brick. Don't lose faith.
                               
                                                    </div>
                                                </div>
                                                <footer class="blockquote-footer text-right">
                                                    Steve Jobs
                               
                                                    <cite title="Source Title">Entrepreneur</cite>
                                                </footer>
                                            </blockquote>
                                            <p class="lead mt-2">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia,
                              fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur
                              aspernatur at.
                           
                                            </p>
                                        </li>
                                        <li data-date="09/07/2015">
                                            <blockquote class="blockquote border-0">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object img-xl mr-1" src="../../../app-assets/images/portrait/small/avatar-s-9.png"
                                                            alt="Generic placeholder image">
                                                    </div>
                                                    <div class="media-body">
                                                        Sometimes life is going to hit you in the head with a brick. Don't lose faith.
                               
                                                    </div>
                                                </div>
                                                <footer class="blockquote-footer text-right">
                                                    Steve Jobs
                               
                                                    <cite title="Source Title">Entrepreneur</cite>
                                                </footer>
                                            </blockquote>
                                            <p class="lead mt-2">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia,
                              fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur
                              aspernatur at.
                           
                                            </p>
                                        </li>
                                        <li data-date="30/08/2015">
                                            <blockquote class="blockquote border-0">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object img-xl mr-1" src="../../../app-assets/images/portrait/small/avatar-s-6.png"
                                                            alt="Generic placeholder image">
                                                    </div>
                                                    <div class="media-body">
                                                        Sometimes life is going to hit you in the head with a brick. Don't lose faith.
                               
                                                    </div>
                                                </div>
                                                <footer class="blockquote-footer text-right">
                                                    Steve Jobs
                               
                                                    <cite title="Source Title">Entrepreneur</cite>
                                                </footer>
                                            </blockquote>
                                            <p class="lead mt-2">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia,
                              fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur
                              aspernatur at.
                           
                                            </p>
                                        </li>
                                        <li data-date="15/09/2015">
                                            <blockquote class="blockquote border-0">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object img-xl mr-1" src="../../../app-assets/images/portrait/small/avatar-s-7.png"
                                                            alt="Generic placeholder image">
                                                    </div>
                                                    <div class="media-body">
                                                        Sometimes life is going to hit you in the head with a brick. Don't lose faith.
                               
                                                    </div>
                                                </div>
                                                <footer class="blockquote-footer text-right">
                                                    Steve Jobs
                               
                                                    <cite title="Source Title">Entrepreneur</cite>
                                                </footer>
                                            </blockquote>
                                            <p class="lead mt-2">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia,
                              fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur
                              aspernatur at.
                           
                                            </p>
                                        </li>
                                    </ol>
                                </div>
                                <!-- .events-content -->
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Basic Horizontal Timeline -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>
