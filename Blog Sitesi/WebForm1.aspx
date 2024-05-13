<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BlogWeb.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>WEB BLOG 2024</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="Dosyalar/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">
                <asp:Repeater ID="Repeater7" runat="server">
                    <ItemTemplate>
                        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src='<%# Eval("FOTOGRAF") %>' alt="..." />
                    </ItemTemplate>
                </asp:Repeater>
            </span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Hakkımda</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Deneyimlerim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Eğitim Hayatım</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Yeteneklerim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Hobilerim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Sertifikalar</a></li>
            </ul>
        </div>
    </nav>
    <!-- Page Content-->
    <div class="container-fluid p-0">
        <!-- About-->
        <section class="resume-section" id="about">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="resume-section-content">
                        <h1 class="mb-0">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD") %>'></asp:Label>
                            <span class="text-primary">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("SOYAD") %>'></asp:Label>
                            </span>
                        </h1>
                        <div class="subheading mb-5">
                            ADRES:
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ADRES") %>'></asp:Label>
                            <p></p>
                            TELEFON:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TELEFON") %>'></asp:Label>
                            <p></p>
                            MAİL: <a href="#">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("MAIL") %>'></asp:Label>
                            </a>
                        </div>
                        <p class="lead mb-5">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("KISANOT") %>'></asp:Label>
                        </p>
                        <div class="social-icons">
                            <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                            <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                            <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                            <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="social-icon" href="#!"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>
        <hr class="m-0" />
        <!-- Experience-->
        <section class="resume-section" id="experience">
            <div class="container">
                <h2 class="mb-4">DENEYİMLERİM</h2>
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="resume-section-content mb-5">
                            <div class="row">
                                <div class="col-12">
                                    <h3 class="mb-0">
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("BASLIK") %>'></asp:Label>
                                    </h3>
                                    <div class="subheading mb-2">
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("ALTBASLIK") %>'></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-8">
                                    <p>
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("ACIKLAMA") %>'></asp:Label>
                                    </p>
                                </div>
                                <div class="col-md-4 text-md-right">
                                    <span class="text-primary">
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("TARIH") %>'></asp:Label>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <hr class="m-0" />
        <!-- Education-->
        <section class="resume-section" id="education">
            <div class="container">
                <h2 class="mb-5">EĞİTİM HAYATIM</h2>
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="resume-section-content mb-5">
                            <div class="d-flex flex-column flex-md-row justify-content-between">
                                <div class="flex-grow-1">
                                    <h3 class="mb-0">
                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("BASLIK") %>'></asp:Label>
                                    </h3>
                                    <div class="subheading mb-3">
                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("ALTBASLIK") %>'></asp:Label>
                                    </div>
                                    <p>
                                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("ACIKLAMA") %>'></asp:Label>
                                    </p>
                                </div>
                                <div class="flex-shrink-0">
                                    <span class="text-primary">
                                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("TARIH") %>'></asp:Label>
                                    </span>
                                    <p>
                                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("GNOT") %>'></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

        <hr class="m-0" />
        <!-- Skills-->
        <section class="resume-section" id="skills">
            <div class="resume-section-content">
                <h2 class="mb-5">YETENEKLERİM</h2>

                <div class="subheading mb-3">Programlama Dilleri</div>

                <ul class="list-inline dev-icons">
                    <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                    <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-windows"></i></li>
                    <li class="list-inline-item"><i class="fab fa-linux"></i></li>
                    <li class="list-inline-item"><i class="fab fa-java"></i></li>
                </ul>
                <div class="subheading mb-3">İş Akışı</div>
                <asp:Repeater ID="Repeater6" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <span class="fa-li"><i class="fas fa-check"></i></span>
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("YETENEK") %>'></asp:Label>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <hr class="m-0" />
        <!-- Interests-->
        <section class="resume-section" id="interests">
            <div class="container">
                <h2 class="mb-5">HOBİLER</h2>
                <div class="resume-section-content">
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <div class="mb-3">
                                <!-- Her hobi için biraz boşluk ekleyerek düzen sağladık -->
                                <p>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("HOBI") %>'></asp:Label>
                                </p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

        <hr class="m-0" />
        <!-- Awards-->
        <section class="resume-section" id="awards">
            <div class="resume-section-content">
                <h2 class="mb-5">SERTİFİKALARIM</h2>
                <asp:Repeater ID="Repeater5" runat="server">
                    <ItemTemplate>
                        <ul class="fa-ul mb-0">
                            <li>
                                <span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("SERTIFIKA") %>'></asp:Label>
                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="Dosyalar/js/scripts.js"></script>
</body>
</html>
