<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CartPay.aspx.cs" Inherits="LastDance.CartPay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Items And Pay</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet" />

    <link rel="stylesheet" href="css/animate7.css" />
    <link rel="stylesheet" href="css/style7.css" />
</head>
<body class="goto-here">
    <form id="form1" runat="server">

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="#">Pay Cart</a>
	      

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.aspx" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">GO</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="Restaurants.aspx">Restaurants</a>
                <a class="dropdown-item" href="Kfc_menu.aspx">KFC</a>
                <a class="dropdown-item" href="starbucks_menu.aspx">Starbucks</a>
              </div>
            </li>
	        </ul>
	      </div>
	    </div>
	  </nav>

    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-0 bread">Buy then Pay</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
						
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>&nbsp;</th>
						        <th>Product</th>
						        <th>Price</th>
						        <th>Quantity</th>
						        <th>Total</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a></td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(images/dish-3.jpg);"></div></td>
						        
						        <td class="product-name">
						        	<h3>Beef And Patato</h3>
						        	<p>Propose of Chef</p>
						        </td>
						        
						        <td class="price">$4.90</td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100" />
					          	</div>
					          </td>
						        
						        <td class="total">$4.90</td>
						      </tr>

						      <tr class="text-center">
						        <td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a></td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(images/dessert-4.jpg);"></div></td>
						        
						        <td class="product-name">
						        	<h3>Apple Cake</h3>
						        	<p>Delicious Dessert By Jack Chef</p>
						        </td>
						        
						        <td class="price">$15.70</td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" name="quantity" class="quantity form-control input-number" value="2" min="1" max="100" />
					          	</div>
					          </td>
						        
						        <td class="total">$31.40</td>
						      </tr>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-center">
    			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>Subtotal</span>
    						<span>$36.30</span>
    					</p>
    					<p class="d-flex">
    						<span>Delivery</span>
    						<span>$3.40</span>
    					</p>
    					<hr />
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span>$37.70</span>
    					</p>
    				</div>
    				<p class="text-center"><a href="#" class="btn btn-primary py-3 px-4">Pay</a></p>
    			</div>
    		</div>
			</div>
		</section>

    <footer class="ftco-footer bg-light ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <p>Copyright &copy; 2023 All rights reserved | Made by Aliyev Ismayil Presents</p>
          </div>
        </div>
      </div>
    </footer>
    
  


  <script src="js/jquery.min7.js"></script>
  <script src="js/jquery-migrate-3.0.1.min7.js"></script>
  <script src="js/popper.min7.js"></script>
  <script src="js/bootstrap.min7.js"></script>
  <script src="js/jquery.easing.1.37.js"></script>
  <script src="js/jquery.waypoints.min7.js"></script>
  <script src="js/jquery.stellar.min7.js"></script>
  <script src="js/owl.carousel.min7.js"></script>
  <script src="js/jquery.magnific-popup.min7.js"></script>
  <script src="js/aos7.js"></script>
  <script src="js/jquery.animateNumber.min7.js"></script>
  <script src="js/scrollax.min7.js"></script>
  <script src="js/main7.js"></script>

  
    </form>
</body>
</html>
