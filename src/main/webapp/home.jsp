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
  <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }

    @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

  </style>
</head>

<body>

	

  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand waves-effect" href="#" target="_blank">
        <strong class="blue-text">ESI-STORE</strong>
      </a>

      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Left -->
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <!--  <a class="nav-link waves-effect" href="#">Home
                <span class="sr-only">(current)</span>
            </a>-->
          </li>
          
        </ul>

        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons">
        
        <% 
        if(request.getAttribute("id_user")!=null){
        	int id_user = (int)request.getAttribute("id_user");
        	//System.out.println("Voici id user"+id_user);
        	if(id_user==9){%>
	          <li class="nav-item">
	            <a class="nav-link waves-effect" href="adding.jsp">
	              
	              <span class="clearfix d-none d-sm-inline-block" > ADD </span>
	            </a>
	          </li>
          <% }
        }
          %> 
          
          <li class="nav-item">
            <a class="nav-link waves-effect" href="signin.jsp">
              
              <span class="clearfix d-none d-sm-inline-block" > SIGN OUT </span>
            </a>
          </li>
        </ul>
        
      </div>

    </div>
  </nav>
  <!-- Navbar -->

  <!--Carousel Wrapper-->
  <div id="carousel-example-1z" class="carousel slide carousel-fade pt-4" data-ride="carousel">

    <!--Indicators-->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-1z" data-slide-to="1"></li>
      <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->

    <!--Slides-->
    <div class="carousel-inner" role="listbox">

      <!--First slide-->
      <div class="carousel-item active">
        <div class="view" style="background-image: url('img/pic1.jpg'); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

            <!-- Content -->
            <div class="text-center white-text mx-5 wow fadeIn">
              <h1 class="mb-4">
                <strong>Discover ESI-ESTORE</strong>
              </h1>

              <p>
                <strong>Best & free Electronics</strong>
              </p>

              <p class="mb-4 d-none d-md-block">
                <strong>The most reliable store for your needs. Loved by over 500 000 users. Buy your own, stunning device, 
                		and benefit of a full concentation for your projects.</strong>
              </p>

              
            </div>
            <!-- Content -->

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/First slide-->

      <!--Second slide-->
      <div class="carousel-item">
        <div class="view" style="background-image: url('img/pic2.jpg'); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

            <!-- Content -->
            <div class="text-center white-text mx-5 wow fadeIn">
              <h1 class="mb-4">
                <strong>Discover ESI-ESTORE</strong>
              </h1>

              <p>
                <strong>Best & free Electronics</strong>
              </p>

              <p class="mb-4 d-none d-md-block">
                <strong>The most reliable store for your needs. Loved by over 500 000 users. Buy your own, stunning device, 
                		and benefit of a full concentation for your projects.</strong>
              </p>

              
            </div>
            <!-- Content -->

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/Second slide-->

      <!--Third slide-->
      <div class="carousel-item">
        <div class="view" style="background-image: url('img/pic3.jpg'); background-repeat: no-repeat; background-size: cover;">

          <!-- Mask & flexbox options-->
          <div class="mask rgba-black-strong d-flex justify-content-center align-items-center">

            <!-- Content -->
            <div class="text-center white-text mx-5 wow fadeIn">
              <h1 class="mb-4">
                <strong>Discover ESI-ESTORE</strong>
              </h1>

              <p>
                <strong>Best & free Electronics</strong>
              </p>

              <p class="mb-4 d-none d-md-block">
                <strong>The most reliable store for your needs. Loved by over 500 000 users. Buy your own, stunning device, 
                		and benefit of a full concentation for your projects.</strong>
              </p>

              
            </div>
            <!-- Content -->

          </div>
          <!-- Mask & flexbox options-->

        </div>
      </div>
      <!--/Third slide-->

    </div>
    <!--/.Slides-->

    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->

  </div>
  <!--/.Carousel Wrapper-->
	  <%@ page import="java.util.ArrayList"%>
	  <%@ page import="java.sql.SQLException"%>	
	  <%@ page import="model.Product"%>
	  <%@ page import="model.Category"%>
	  <%@ page import="model.ConnectDB"%>
	  <%ConnectDB udb=new ConnectDB();
      ArrayList<Category> listCategories= new ArrayList<Category>();
      ArrayList<Product> listProducts= new ArrayList<Product>();
      
      try {
    	  listCategories=udb.findCategories();
    	  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getErrorCode()+": "+e.getMessage());
			//e.printStackTrace();
		}
      try {
    	  listProducts=udb.findProducts();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println(e.getErrorCode()+": "+e.getMessage());
		}
                				%>

  <!--Main layout-->
  <main>
    <div class="container">

      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5">

        <!-- Navbar brand -->
        <span class="navbar-brand">Categories:</span>

		<% %>
        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
          aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          <!-- Links -->
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">All
                <span class="sr-only">(current)</span>
              </a>
            </li>
            
            <% for (Category c:listCategories) {%>
            <li class="nav-item">
              <a class="nav-link" href="#"><%=c.getName() %></a>
            </li>
            <%}%>
            

          </ul>
          <!-- Links -->

          <form class="form-inline">
            <div class="md-form my-0">
              <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            </div>
          </form>
        </div>
        <!-- Collapsible content -->

      </nav>
      <!--/.Navbar-->

		
      <!--Section: Products v.3-->
      <section class="text-center mb-4">
      <div class="row wow fadeIn">
		
		<% int cpt=0;
		
		for(Product p:listProducts){
			if(cpt%4==0 && cpt!=0){%>
			</div>
			<!--Grid row-->
       		<div class="row wow fadeIn">
			<%}
			cpt++;%>

          <!--Grid column-->
          <div class="col-lg-3 col-md-6 mb-4">
          

            <!--Card-->
            <div class="card">

              <!--Card image-->
              <div class="view overlay">
                <img src="<%=p.getPicture() %>" class="card-img-top"
                  alt="">
                
              </div>
              <!--Card image-->

              <!--Card content-->
              <div class="card-body text-center">
                <!--Category & Title-->
                <a href="" class="grey-text">
                  <h5>
                  <%try{udb.findCategory(p.getId_product_category());}
                  catch (SQLException e) {
          			System.out.println(e.getErrorCode()+": "+e.getMessage());
          		}%></h5>
                </a>
                <h5>
                  <strong>
                    <a href="./HomeServlet?id_product=<%=p.getId_product() %>
                    " class="dark-grey-text"><%=p.getName()%> 
                      <span class="badge badge-pill danger-color"><%=p.getParticularity()%></span>
                    </a>
                  </strong>
                </h5>

                <h4 class="font-weight-bold blue-text">
                  <strong><%=p.getPrice()%> </strong>
                </h4>

              </div>
              <!--Card content-->

            </div>
            <!--Card-->

          </div>
          <!--Grid column-->
          <%} %>
          </div>
			<!--Last row column-->
		
      </section>
      <!--Section: Products v.3-->

      <!--Pagination-->
      <nav class="d-flex justify-content-center wow fadeIn">
        <ul class="pagination pg-blue">

          <!--Arrow left-->
          <li class="page-item disabled">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
              <span class="sr-only">Previous</span>
            </a>
          </li>

          <li class="page-item active">
            <a class="page-link" href="#">1
              <span class="sr-only">(current)</span>
            </a>
          </li>
          

          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
              <span class="sr-only">Next</span>
            </a>
          </li>
        </ul>
      </nav>
      <!--Pagination-->

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
