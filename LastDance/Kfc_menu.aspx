<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kfc_menu.aspx.cs" Inherits="LastDance.Kfc_menu" %>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>KFC</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="fonts/font-poppins.css" rel="stylesheet" />
    <link href="fonts/fonts-josefin.css" rel="stylesheet" />
    <link href="fonts/fonts-great.css" rel="stylesheet" />
	<link href="css/open-iconic-bootstrap5.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/animate5.css">
    
    <link rel="stylesheet" href="css/owl.carousel5.min.css">
    <link rel="stylesheet" href="css/owl.theme5.default.min.css">
    <link rel="stylesheet" href="css/magnific5-popup.css">
    <link rel="stylesheet" href="css/aos5.css">
	<link href="css/ionicons5.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap5-datepicker.css">
    <link rel="stylesheet" href="css/jquery5.timepicker.css">
    <link href="css/flaticon5.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/icomoon5.css">
    <link rel="stylesheet" href="css/style5.css">
  </head>
  <body>
	  <form runat="server">
	  <div class="kfc" >
  	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">KFC<small>Menu</small></a>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.aspx" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="Restaurants.aspx" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Restaurants</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="Kfc_menu.aspx">KFC</a>
                <a class="dropdown-item" href="starbucks_menu.aspx">Starbucks</a>
				<a class="dropdown-item" href="pizza_menu.aspx">Pizza</a>

              </div>
            </li>
	        </ul>
	      </div>
		  </div>
	  </nav>
		  
    <section class="ftco-menu mb-5 pb-5">
    	<div class="container" style="backdrop-filter: blur(10px);">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Order</span>
            <h2 class="mb-4">Best of All</h2>
            <p style="color: ButtonHighlight">The best foods of the country are here.</p>
          </div>
        </div>
    		<div class="row d-md-flex">
	    		<div class="col-lg-12 ftco-animate p-md-5">
		    		<div class="row">
		          <div class="col-md-12 nav-link-wrap mb-5">
		            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		              <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Main Dish</a>

		              <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Drinks</a>

		              <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Desserts</a>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex align-items-center">
		            
		            <div class="tab-content ftco-animate" id="v-pills-tabContent" >
		              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
		              	
						  <div class="row">
		              		<asp:DataList ID="DataList1" runat="server" class="col-md-4 text-center"  RepeatColumns="3" CellPadding="50">
		              			<ItemTemplate >
		              				<asp:Image runat="server" class="menu-img img mb-4" ImageUrl='<%#Eval("FoodImage") %>' Height="200" Width="250"/>
		              				<div class="menu-wrap">
		              					<h3><%#Eval("FoodName")%></h3>
		              					<p style="color: ButtonHighlight"><%#Eval("FoodDescription")%></p>
		              					<p class="price" style="color: ButtonHighlight"><span><%#Eval("FoodPrice")%></span></p>
		              					<p><asp:Button ID="btnAdd" runat="server" Text="Add to cart" class="btn btn-primary btn-outline-primary" /></p>
		              				</div>
		              			</ItemTemplate>
		              		</asp:DataList>
		              	</div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
		                <div class="row">
		              		<asp:DataList ID="DataList2" runat="server" class="col-md-4 text-center"  RepeatColumns="3" CellPadding="50">
		              			<ItemTemplate >
		              				<asp:Image runat="server" class="menu-img img mb-4" ImageUrl='<%#Eval("FoodImage") %>' Height="200" Width="250"/>
		              				<div class="menu-wrap">
		              					<h3><%#Eval("FoodName")%></h3>
		              					<p style="color: ButtonHighlight"><%#Eval("FoodDescription")%></p>
		              					<p class="price" style="color: ButtonHighlight"><span><%#Eval("FoodPrice")%></span></p>
										<p><asp:Button ID="btnAdd" runat="server" Text="Add to cart" class="btn btn-primary btn-outline-primary"  /></p>
		              				</div>
		              			</ItemTemplate>
		              		</asp:DataList>
		              	</div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
		                <div class="row">
                            <asp:DataList ID="DataList3" runat="server" class="col-md-4 text-center"  RepeatColumns="3" CellPadding="50">
		              			<ItemTemplate >
		              				<asp:Image runat="server" class="menu-img img mb-4" ImageUrl='<%#Eval("FoodImage") %>' Height="200" Width="250"/>
		              				<div class="menu-wrap">
		              					<h3 ><%#Eval("FoodName")%></h3>
		              					<p style="color: ButtonHighlight"><%#Eval("FoodDescription")%></p>
		              					<p class="price" style="color: ButtonHighlight"><span><%#Eval("FoodPrice")%></span></p>
		              					<p><asp:Button ID="btnAdd" runat="server" Text="Add to cart" class="btn btn-primary btn-outline-primary" /></p>
		              				</div>
		              			</ItemTemplate>
		              		</asp:DataList>

		              	</div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>

    <footer class="ftco-footer ftco-section img">
    	<div class="overlay"></div>
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About Us</h2>
              <p>As a KFC we are the biggest restaurant chain. We have foods such burgers, chicken wings, and blah blah.</p>
              
            </div>
          </div>
          <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
             <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Other Restaurants</h2>
              <ul class="list-unstyled">
                <li><a href="starbucks_menu.aspx" class="py-2 d-block">Starbucks</a></li>
                <li><a href="burgerking_menu.aspx" class="py-2 d-block">Burger King</a></li>
              </ul>
            </div>
          </div>
			
          <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
            
          </div>
          <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Problem?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="text">28 May, Baku, Azerbaijan</span></li>
	                <li><a href="#"><span class="text">077 777 77 77</span></a></li>
	                <li><a href="www.gmail.com"><span class="text">ismayil@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
  Copyright &copy; 2023 All rights reserved | This template is made by Aliyev Ismayil
          </div>
        </div>
      </div>
    </footer>

  <script src="js/jquery.min5.js"></script>
  <script src="js/jquery-migrate-3.0.1.min5.js"></script>
  <script src="js/popper.min5.js"></script>
  <script src="js/bootstrap.min5.js"></script>
  <script src="js/jquery.easing.1.35.js"></script>
  <script src="js/jquery.waypoints.min5.js"></script>
  <script src="js/jquery.stellar.min5.js"></script>
  <script src="js/owl.carousel.min5.js"></script>
  <script src="js/jquery.magnific-popup.min5.js"></script>
  <script src="js/aos5.js"></script>
  <script src="js/jquery.animateNumber.min5.js"></script>
  <script src="js/bootstrap-datepicker5.js"></script>
  <script src="js/jquery.timepicker.min5.js"></script>
  <script src="js/scrollax.min5.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map5.js"></script>
  <script src="js/main5.js"></script>
    


	</div>

</form>
  </body>
</html>