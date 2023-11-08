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

<body class="grey lighten-3">

  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand waves-effect" href="#" target="">
        <strong class="blue-text">ESI-STORE</strong>
      </a>

      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Left -->
        <ul class="navbar-nav mr-auto">
            <!--  <a class="nav-link waves-effect" href="home.jsp">Home</a>   -->            
          
        </ul>

        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons">
          <li class="nav-item">
            <a class="nav-link waves-effect" href="signup.jsp">
              
              <span class="clearfix d-none d-sm-inline-block" > SIGN UP </span>
            </a>
          </li>
          
          
          
        </ul>

      </div>

    </div>
  </nav>
  <!-- Navbar -->

  <!--Main layout-->
  <main class="mt-5 pt-4">
    <div class="container wow fadeIn">

      <!-- Heading -->
      <h2 class="my-5 h2 r">Sign in form</h2>

      <!--Grid row-->
      <div class="row">

        <!--Grid column-->
        <div class="col-md-8 mb-4">

          <!--Card-->
          <div class="card">
          
          

            <!--Card content-->
            <form class="card-body" method="post" action="./SigninServlet">
            
          	<h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Authentification</span>
          </h4>
          
                        
			<%
			String u = (String)request.getAttribute("Erreur");
			//System.out.println("acces");
			if(u!=null)
			{
				//System.out.println("condition");
			%> 
			<div class="alert">
			  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
			  Vos données sont incorrectes. Veuillez réessayer.
			</div>
			<% }%>  
          
             <!--Username-->
              <div class="md-form input-group pl-0 mb-5">
              <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1">@</span>
                </div>
                <input type="text" class="form-control py-0" placeholder="Username" aria-describedby="basic-addon1" name="user_name">
              </div>
              
               <div class="md-form mb-5">
                
                
                <input type="text" id="password" class="form-control" placeholder="Password" name="password">
              </div>
              

              
              <hr class="mb-4">
              <button class="btn btn-primary btn-lg btn-block" type="submit">SIGN IN</button>

            </form>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column-->


      </div>
      <!--Grid row-->

    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mt-4 wow fadeIn">

    
    <!--/.Call to action-->

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
      Â© 2023 Copyright:
      <a href="home-page.jsp" target=""> ESI-STORE </a>
    </div>
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
