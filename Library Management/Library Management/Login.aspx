﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Library_Management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
    <!-- Meta Start -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <!-- Meta End -->

    <!-- Title Start -->
    <title>e-KOS Giriş Paneli</title>
    <!-- Title End -->

    <!-- Favicon Start -->
    <link rel="apple-touch-icon" href="<%# Page.ResolveUrl("~") %>/app-assets/images/ico/apple-icon-120.png" />
    <link rel="shortcut icon" type="image/x-icon" href="<%# Page.ResolveUrl("~") %>/app-assets/images/ico/favicon.ico" />
    <!-- Favicon End -->

    <!-- Web Font Start -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Quicksand:300,400,500,700" rel="stylesheet" />
    <link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css" rel="stylesheet" />
    <!-- Web Font Start -->

    <!-- Begin Vendor CSS Start -->
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/app-assets/css/vendors.css" />
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/app-assets/vendors/css/forms/icheck/icheck.css" />
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/app-assets/vendors/css/forms/icheck/custom.css" />
    <!-- Begin Vendor CSS End -->

    <!-- Begin Modern CSS Start -->
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/app-assets/css/app.css" />
    <!-- Begin Modern CSS End -->

    <!-- Begin Page Level CSS Start -->
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/app-assets/css/core/menu/menu-types/vertical-content-menu.css" />
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/app-assets/css/core/colors/palette-gradient.css" />
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/app-assets/css/pages/login-register.css" />
    <!-- Begin Page Level CSS End-->

    <!-- Begin Custom CSS Start -->
    <link rel="stylesheet" type="text/css" href="<%# Page.ResolveUrl("~") %>/assets/css/style.css" />
    <!-- Begin Custom CSS End -->
</head>
<body class="vertical-layout vertical-content-menu 1-column bg-full-screen-image menu-expanded blank-page blank-page" data-open="click" data-menu="vertical-content-menu" data-col="1-column">
    <form id="form1" runat="server">
        <div class="app-content content">
            <div class="content-wrapper">
                <div class="content-body">
                    <section class="flexbox-container">
                        <div class="col-12 d-flex align-items-center justify-content-center">
                            <div class="col-md-4 col-10 box-shadow-2 p-0">
                                <div class="card border-grey border-lighten-3 px-1 py-1 m-0">
                                    <div class="card-header border-0">
                                        <div class="card-title text-center">
                                            <img src="../../../app-assets/images/logo/e-KOS-Logo.png" alt="branding logo" class="img-fluid" />
                                        </div>
                                    </div>
                                    <div class="card-content">
                                        <div class="card-body">
                                            <fieldset class="form-group position-relative has-icon-left">
                                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" ValidationGroup="Login"></asp:TextBox>
                                                <asp:CustomValidator ID="cvUsername" runat="server" ErrorMessage="" ControlToValidate="txtUsername" ClientValidationFunction="IsEmpty" ValidateEmptyText="true" ValidationGroup="Login"></asp:CustomValidator>
                                                <div class="form-control-position">
                                                    <i class="ft-user"></i>
                                                </div>
                                            </fieldset>
                                            <fieldset class="form-group position-relative has-icon-left">
                                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Şifre" TextMode="Password" ValidationGroup="Login"></asp:TextBox>
                                                <asp:CustomValidator ID="cvPassword" runat="server" ErrorMessage="" ControlToValidate="txtPassword" ClientValidationFunction="IsEmpty" ValidateEmptyText="true" ValidationGroup="Login"></asp:CustomValidator>
                                                <div class="form-control-position">
                                                    <i class="la la-key"></i>
                                                </div>
                                            </fieldset>
                                            <button class="btn btn-outline-success btn-block" runat="server" onclick="CheckLogin()" validationgroup="Login" type="button" id="btnLogin">
                                                <i class="ft-unlock"></i>
                                                Giriş
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!-- Begin Vendor JS Start-->
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/vendors/js/vendors.min.js" type="text/javascript"></script>
        <!-- Begin Vendor JS Start-->

        <!-- Begin Page Vendor JS Start -->
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/vendors/js/ui/headroom.min.js" type="text/javascript"></script>
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js" type="text/javascript"></script>
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/vendors/js/forms/icheck/icheck.min.js" type="text/javascript"></script>
        <!-- Begin Page Vendor JS End -->

        <!-- Begin Modern JS Start -->
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/js/core/app-menu.js" type="text/javascript"></script>
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/js/core/app.js" type="text/javascript"></script>
        <!-- Begin Modern JS End -->

        <!-- Begin Page Level JS Start -->
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/js/scripts/forms/form-login-register.js" type="text/javascript"></script>
        <!-- Begin Page Level JS End -->

        <!-- Custom Script Start -->
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/js/scripts/Login.js" type="text/javascript"></script>
        <script src="<%# Page.ResolveUrl("~") %>/app-assets/js/scripts/Validation.js" type="text/javascript"></script>
        <!-- Custom Script End -->
    </form>
</body>
</html>
