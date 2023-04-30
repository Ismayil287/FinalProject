<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurants.aspx.cs" Inherits="LastDance.Restaurants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Restaurants</title>
    <link href="fonts/font-poppins.css" rel="stylesheet" />
    <link href="fonts/fonts-josefin.css" rel="stylesheet" />
    <link href="fonts/fonts-great.css" rel="stylesheet" />
	<link href="css/open-iconic-bootstrap5.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/animate5.css">

    <link rel="stylesheet" href="css/owl.carousel5.min.css" />
    <link rel="stylesheet" href="css/owl.theme5.default.min.css"/>
    <link rel="stylesheet" href="css/magnific5-popup.css"/>
    <link rel="stylesheet" href="css/aos5.css"/>
	<link href="css/ionicons5.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap5-datepicker.css"/>
    <link rel="stylesheet" href="css/jquery5.timepicker.css"/>
    <link href="css/flaticon5.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/icomoon5.css"/>
    <link rel="stylesheet" href="css/style5.css"/>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Best<small>Restaurants</small></a>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a  href="index.aspx" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="Login.aspx" class="nav-link">Login Here</a></li>

	        </ul>
	      </div>
		  </div>
	  </nav>
<section id="gtco-special-dishes" class="bg-grey section-padding">
    <div class="container ">
        <div class="section-content">
            
             <div class="row mt-5">

                 <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
		              	
						  <div class="row">
		              		<asp:DataList ID="Datalist1" runat="server" class="col-md-4 text-center"  RepeatColumns="3" CellPadding="70">
		              			<ItemTemplate >
		              				<asp:Image runat="server" class="menu-img img mb-4" ImageUrl='<%#Eval("ImagePath") %>' Height="200" Width="250"/>
		              				<div class="menu-wrap">
		              					<h3><%#Eval("RestaurantsName")%></h3>
		              					<p style="color: ButtonHighlight"><%#Eval("Description")%></p>
		              					<p><a target="_blank" class="btn btn-primary btn-outline-primary" href="<%#Eval("ButtonPath")%>">Go to Restaurant</a></p>
		              				</div>
		              			</ItemTemplate>
		              		</asp:DataList>
		              	</div>
		              </div>
            </div>
                    </div>
                </div>               
            </section>
</body>
</html>
