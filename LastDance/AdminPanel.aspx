<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="LastDance.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <link href="fonts/bootstrap-fonts2.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link href="css/bootstrap-icons.css" rel="stylesheet" />

    <link href="css/templatemo-festava-live.css" rel="stylesheet" />
    <link href="AdminPanelStyle.css" rel="stylesheet" />
</head>
<body>




    <form runat="server">
        <main>
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand" href="index.aspx">IssFood
                    </a>



                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">

                            <li class="nav-item">
                                <asp:Button ID="btnHome" runat="server" Text="Home" class="btn custom-btn smoothscroll" OnClick="btnHome_Click" />
                                <asp:Button ID="btnRestaurant" runat="server" Text="Restaurants" class="btn custom-btn smoothscroll" OnClick="btnRestaurant_Click" />
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>

            <section class="hero-section" id="section_1">
                <div class="section-overlay"></div>

                <div class="container d-flex justify-content-center align-items-center">
                    <div class="row">

                        <div class="col-12 mt-auto mb-5 text-center">
                            <small>ALIYEV PRESENTS</small>

                            <h1 class="text-white mb-5">Administrator of Website</h1>
                        </div>

                        <div class="col-lg-12 col-12 mt-auto d-flex flex-column flex-lg-row text-center">
                            <div class="location-wrap mx-auto py-3 py-lg-0">
                                <h5 class="text-white">
                                    <i class="custom-icon bi-geo-alt me-2"></i>
                                    Baku, Azerbaijan
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="video-wrap">
                    <video autoplay="" loop="" muted="" class="custom-video" poster="">
                        <source src="videos/bgvideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </section>




            <section class="contact-section section-padding" id="section_3">
                <div class="container">
                    <div class="row">
                        <h2>Our Users</h2>

                        <asp:GridView
                            ID="grdCustomer"
                            runat="server"
                            AutoGenerateColumns="False"
                            GridLines="None"
                            CssClass="mGrid"
                            PagerStyle-CssClass="pgr"
                            AlternatingRowStyle-CssClass="alt"
                            DataKeyNames="ID"
                            OnRowCancelingEdit="grdCustomer_RowCancelingEdit"
                            OnRowDeleting="grdCustomer_RowDeleting"
                            OnRowEditing="grdCustomer_RowEditing"
                            OnRowUpdating="grdCustomer_RowUpdating">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
                                <asp:BoundField DataField="Username" HeaderText="Username" />
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:BoundField DataField="Password" HeaderText="Password" />
                                <asp:CommandField HeaderText="Edit" ButtonType="Button" ShowEditButton="True">
                                    <ControlStyle BackColor="#00CC00" ForeColor="White" Width="100%" />
                                </asp:CommandField>
                                <asp:CommandField HeaderText="Delete" ButtonType="Button" ShowDeleteButton="True">
                                    <ControlStyle BackColor="#CC0000" ForeColor="White" Width="100%" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>

                        <h2>Users Feedbacks</h2>
                        <asp:GridView ID="grdFeedback"
                            runat="server"
                            AutoGenerateColumns="False"
                            GridLines="None"
                            CssClass="mGrid2"
                            AlternatingRowStyle-CssClass="alt">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
                                <asp:BoundField DataField="Fullname" HeaderText="Full Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:BoundField DataField="Message" HeaderText="Message" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </section>
        </main>
        <footer class="site-footer">
            <div class="site-footer-top">
                <div class="container">
                    <div class="row">

                        <div class="container">
                            <div class="row">

                                <div class="col-lg-6 col-12 mb-4 pb-2">
                                    <h5 class="site-footer-title mb-3">Links</h5>

                                    <ul class="site-footer-links">
                                        <li class="site-footer-link-item">
                                            <a href="#" class="site-footer-link">Home</a>
                                        </li>

                                        <li class="site-footer-link-item">
                                            <a href="#" class="site-footer-link">About</a>
                                        </li>

                                        <li class="site-footer-link-item">
                                            <a href="#" class="site-footer-link">Restaurants</a>
                                        </li>

                                        <li class="site-footer-link-item">
                                            <a href="#" class="site-footer-link">Contact</a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                                    <h5 class="site-footer-title mb-3">Have a problem?</h5>

                                    <p class="text-white d-flex mb-1">
                                        <a href="tel: 070-770-76-70" class="site-footer-link">070-770-76-70
                                        </a>
                                    </p>

                                    <p class="text-white d-flex">
                                        <a href="mailto:ieliyev970@gmail.com" class="site-footer-link">ieliyev970@gmail.com
                                        </a>
                                    </p>
                                </div>

                                <div class="col-lg-3 col-md-6 col-11 mb-4 mb-lg-0 mb-md-0">
                                    <h5 class="site-footer-title mb-3">Location</h5>

                                    <p class="text-white d-flex mt-3 mb-2">
                                        Baku, 28 May, Azadliq Avenue
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="site-footer-bottom">
                            <div class="container">
                                <div class="row">

                                    <div class="col-lg-3 col-12 mt-5">
                                        <p class="copyright-text">Copyright © 2023 Aliyev Ismayil Presents</p>
                                    </div>

                                    <div class="col-lg-8 col-12 mt-lg-5">
                                        <ul class="site-footer-links">
                                            <li class="site-footer-link-item">
                                                <a target="_blank" href="https://www.twitter.com/" class="site-footer-link">Twitter</a>
                                            </li>

                                            <li class="site-footer-link-item">
                                                <a target="_blank" href="https://www.instagram.com/" class="site-footer-link">Instagram</a>
                                            </li>

                                            <li class="site-footer-link-item">
                                                <a target="_blank" href="https://www.facebook.com/" class="site-footer-link">Facebook</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </footer>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/custom.js"></script>







    </form>
</body>
</html>
