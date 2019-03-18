<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Library_Management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
    <!-- Meta Start -->
    <meta charset="UTF-8" />
    <meta name="keywords" content="Kütüphane Yönetim Yazılımı" />
    <meta name="description" content="Kütüphane Yönetim Yazılımı" />
    <meta name="author" content="Ardanuc AKAR - Volkan KAHRAMAN" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Meta End -->

    <!-- Title Start -->
    <title></title>
    <!-- Title End -->

    <!-- Web Fonts Start -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />
    <!-- Web Fonts End -->

    <!-- Vendor CSS Start -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
    <!-- Vendor CSS End -->

    <!-- Theme CSS Start -->
    <link rel="stylesheet" href="assets/stylesheets/theme.css" />
    <!-- Theme CSS End -->

    <!-- Skin CSS Start -->
    <link rel="stylesheet" href="assets/stylesheets/skins/default.css" />
    <!-- Skin CSS End -->

    <!-- Head Libs Start -->
    <script src="assets/vendor/modernizr/modernizr.js"></script>
    <!-- Head Libs End -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- start: page -->
        <section class="body-sign">
            <div class="center-sign">
                <a href="/" class="logo pull-left">
                    <img src="assets/images/logo.png" height="54" alt="Porto Admin" />
                </a>

                <div class="panel panel-sign">
                    <div class="panel-title-sign mt-xl text-right">
                        <h2 class="title text-uppercase text-bold m-none"><i class="fa fa-user mr-xs"></i>Kütüphane Giriş Paneli</h2>
                    </div>
                    <div class="panel-body">
                        <div class="form-group mb-lg">
                            <label>Kullanıcı Adı</label>
                            <div class="input-group input-group-icon">
                                <input name="username" type="text" class="form-control input-lg" />
                                <span class="input-group-addon">
                                    <span class="icon icon-lg">
                                        <i class="fa fa-user"></i>
                                    </span>
                                </span>
                            </div>
                        </div>

                        <div class="form-group mb-lg">
                            <div class="clearfix">
                                <label class="pull-left">Şifre</label>
                            </div>
                            <div class="input-group input-group-icon">
                                <input name="pwd" type="password" class="form-control input-lg" />
                                <span class="input-group-addon">
                                    <span class="icon icon-lg">
                                        <i class="fa fa-lock"></i>
                                    </span>
                                </span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-8">
                                <div class="checkbox-custom checkbox-default">
                                    <input id="RememberMe" name="rememberme" type="checkbox" />
                                    <label for="RememberMe">Beni Hatırla</label>
                                </div>
                            </div>
                            <div class="col-xs-4 text-right">
                                <button type="submit" class="btn btn-primary">Giriş</button>
                            </div>
                        </div>
                    </div>
                </div>

                <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2014. All Rights Reserved.</p>
            </div>
        </section>
        <!-- end: page -->
		<script src="assets/vendor/jquery/jquery.js"></script>		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>		<script src="assets/vendor/magnific-popup/magnific-popup.js"></script>		<script src="assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>

        <!-- Theme Base, Components and Settings -->
        <script src="assets/javascripts/theme.js"></script>

        <!-- Theme Initialization Files -->
        <script src="assets/javascripts/theme.init.js"></script>
    </form>
</body>
</html>
