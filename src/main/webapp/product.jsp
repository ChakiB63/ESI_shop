<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>E-STORE with ESI</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.min.css" rel="stylesheet">
</head>

<body>

  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand waves-effect" href="#" target="">
        <strong class="blue-text">ESI-STORE</strong>
      </a>

      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Left 
        <ul class="navbar-nav mr-auto">
            <a class="nav-link waves-effect" href="home.jsp">Home
              
            </a>-->
          
         
        </ul>
        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons">
        <li class="nav-item">
            <a class="nav-link waves-effect" href="signin.jsp">
              
              <span class="clearfix d-none d-sm-inline-block" > SIGN OUT </span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link waves-effect" href="checkout-page.jsp">
              <span class="badge red z-depth-1 mr-1"> 1<% %> </span>
              <i class="fas fa-shopping-cart"></i>
              <span class="clearfix d-none d-sm-inline-block"> Cart </span>
            </a>
          </li>
                    
        </ul>

      </div>

    </div>
  </nav>
  <!-- Navbar -->


	<%@ page import="java.util.ArrayList"%>
	  <%@ page import="model.Product"%>
	  <%@ page import="model.Category"%>
	  <%@ page import="model.ConnectDB"%>
	  <%ConnectDB udb=new ConnectDB();
       
      int id= (int)request.getAttribute("id_product");
      Product p=udb.findProduct(id);
      %>

		
  <!--Main layout-->
  <main class="mt-5 pt-4">
    <div class="container dark-grey-text mt-5">

      <!--Grid row-->
      <div class="row wow fadeIn">

        <!--Grid column-->
        <div class="col-md-6 mb-4">
          <img src="<%=p.getPicture() %>" class="img-fluid" alt="">

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-6 mb-4">

          <!--Content-->
          <div class="p-4">

            <div class="mb-3">
              <a href="">
                <span class="badge purple mr-1"><%=p.getId_product_category() %></span>
              </a>
              <a href="">
                <span class="badge blue mr-1"><%=p.getParticularity() %></span>
              </a>
           
            </div>

            <p class="lead">
              
              <span><%=p.getPrice() %></span>
            </p>

            <p class="lead font-weight-bold">Description</p>

            <p><%=p.getDescription() %></p>

            <form class="d-flex justify-content-left" action="checkout-page.jsp">
              <!-- Default input -->
              <input type="number" value="1" aria-label="Search" class="form-control" style="width: 100px">
              <a href=""><button class="btn btn-primary btn-md my-0 p" type="submit">Add to cart
                <i class="fas fa-shopping-cart ml-1"></i>
              </button></a>

            </form>

          </div>
          <!--Content-->

        </div>
        <!--Grid column-->

      </div>
      <!--Grid row-->

      <hr>

      
    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mt-4 wow fadeIn">

    

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
      <a href="https://www.facebook.com/ESIACTIVITIES" target="_blank">
        <i class="fab fa-facebook-f mr-3"></i>
      </a>

      
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
      © 2023 Copyright:
		<a href="home-page.jsp" target=""> ESI-STORE </a>    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();

  </script>
</body>

</html>
