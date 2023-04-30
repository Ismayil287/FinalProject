<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LastDance.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IssFood</title>
    <link href="fonts/bootstrap-fonts2.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link href="css/bootstrap-icons.css" rel="stylesheet" />

    <link href="css/templatemo-festava-live.css" rel="stylesheet" />
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
                                <a class="nav-link click-scroll" href="#section_1">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_2">About</a>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_3">Contact</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="Restaurants.aspx">Restaurants</a>
                            </li>
                        </ul>
                        <asp:Button ID="btnLogin" runat="server" class="btn custom-btn smoothscroll" OnClick="btnLogin_Click" />
                        <asp:Button ID="btnAdmin" runat="server" Text="Admin" class="btn custom-btn smoothscroll" OnClick="btnAdmin_Click" />


                    </div>
                </div>
            </nav>

            <section class="hero-section" id="section_1">
                <div class="section-overlay"></div>

                <div class="container d-flex justify-content-center align-items-center">
                    <div class="row">

                        <div class="col-12 mt-auto mb-5 text-center">
                            <small>ALIYEV PRESENTS</small>

                            <h1 class="text-white mb-5">Best Food Search</h1>

                            <a class="btn custom-btn smoothscroll" href="Restaurants.aspx">Order</a>
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
                        <source src="videos/introvideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </section>
            <section class="about-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mb-4 mb-lg-0 d-flex align-items-center">
                            <div class="services-info">
                                <h2 class="text-white mb-4">About Ismayil Presents 2023</h2>

                                <p class="text-white">This young gentleman, who aimed to establish a new future for himself, founded such a company.</p>

                                <h6 class="text-white mt-4">About IssFood</h6>

                                <p class="text-white">Affordable prices and recipes from talented chefs make customers love our website.</p>

                                <h6 class="text-white mt-4">Choose the best food.</h6>

                                <p class="text-white">Our easy search system will allow you to find the menu that suits your taste.</p>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12">
                            <div class="about-text-wrap">
                                <img src="images/bg_10.jpg" class="about-image img-fluid" />

                            </div>
                        </div>

                    </div>
                </div>
            </section>




            <section class="contact-section section-padding" id="section_3">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-12 mx-auto">
                            <h2 class="text-center mb-4">Want to rate us?</h2>

                            <div class="tab-content shadow-lg mt-5" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel" aria-labelledby="nav-ContactForm-tab">
                                    <div class="custom-form contact-form mb-5 mb-lg-0" action="#" method="post" role="form">
                                        <div class="contact-form-body">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <asp:TextBox runat="server" ID="txtFullname" type="text" name="contact-name" class="form-control" placeholder="Full name" />
                                                </div>

                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <asp:TextBox ID="txtEmail" runat="server" type="email" name="contact-email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" />
                                                </div>
                                            </div>


                                            <asp:TextBox runat="server" ID="txtMessage" name="contact-message" Rows="3" class="form-control" placeholder="Message" />

                                            <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                                <asp:Button ID="btnSend" runat="server" Text="Send message" type="submit" class="form-control" BackColor="Green" ForeColor="White" OnClick="btnSend_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <footer class="site-footer">
            <div class="site-footer-top">
                <div class="container" >
                    <div class="row">

                        <div class="container" >
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
