<%-- <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Student Login</title>
  <!-- Favicon -->
  <link href="Bootstrap/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="Bootstrap/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="Bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="Bootstrap/css/argon.css?v=1.0.1" rel="stylesheet">
  <!-- Docs CSS -->
  <link type="text/css" href="Bootstrap/css/docs.min.css" rel="stylesheet">
</head>

<body>
  <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom">
      <div class="container">
        <a class="navbar-brand mr-lg-5" href="../index.html">
          
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
          <div class="navbar-collapse-header">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="../index.html">
                  <img src="Bootstrap/img/brand/blue.png">
                </a>
              </div>
              <div class="col-6 collapse-close">
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                  <span></span>
                  <span></span>
                </button>
              </div>
            </div>
          </div>
          <ul class="navbar-nav align-items-lg-center ml-lg-auto">
            <li class="nav-item d-none d-lg-block ml-lg-4">
              <a href="http://localhost:8080/MiniProject/Logout.jsp" target="_blank" class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon">
                </span>
                <span class="nav-link-inner--text">Home</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <main>
    <section class="section section-shaped section-lg">
      <div class="shape shape-style-1 bg-gradient-success">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="container pt-lg-md">
        <div class="row justify-content-center">
          <div class="col-lg-5">
          	<p class="font-weight-bold" style="font-size: 20px">User Login</p>
            <div class="card bg-secondary shadow border-0">
              <div class="card-body px-lg-5 py-lg-5">
                <form role="form" action="LoginController" method="post">

                  <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"></span>
                      </div>
                      <input class="form-control" type="name" name="user_id" placeholder="User Id" >
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"></span>
                      </div>
                      <input class="form-control" placeholder="Password" type="password" name="user_password">
                    </div>
                  </div>
                  <div class="text-center">
                    <input type="submit" value="Log In " class="btn btn-default">
                  </div>
                </form>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col-6 text-right">
                  <b>Create new account ?</b>
              </div>
              <div class="col-6 text-right">
              <a href="http://localhost:8080/MiniProject/LandingPage.jsp" class="text-light"><small>Students?</small></a>
                   <br> 
                    <a href="http://localhost:8080/MiniProject/SigninTeachers.jsp" class="text-light"><small>Teacher?</small></a>
                     <br>
                     <a href="http://localhost:8080/MiniProject/SigninCoordinators.jsp" class="text-light"><small>Coordinator?</small></a>
                   </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
  <footer class="footer">
    <div class="container">
      <div class="row row-grid align-items-center mb-5">
        <div class="col-lg-6">
          <h4 class="mb-0 font-weight-light">Let's get in touch on any of these platforms.</h4>
        </div>
        <div class="col-lg-6 text-lg-center btn-wrapper">
          <a target="_blank" href="https://twitter.com" class="btn btn-neutral btn-icon-only btn-twitter btn-round btn-lg" data-toggle="tooltip" data-original-title="Follow us">
            <i class="fa fa-twitter"></i>
          </a>
          <a target="_blank" href="https://www.facebook.com" class="btn btn-neutral btn-icon-only btn-facebook btn-round btn-lg" data-toggle="tooltip" data-original-title="Like us">
            <i class="fa fa-facebook-square"></i>
          </a>
          <a target="_blank" href="https://github.com/creativetimofficial" class="btn btn-neutral btn-icon-only btn-github btn-round btn-lg" data-toggle="tooltip" data-original-title="Star on Github">
            <i class="fa fa-github"></i>
          </a>
        </div>
      </div>
      <hr>
      <div class="row align-items-center justify-content-md-between">
        <div class="col-md-6">
          <div class="copyright">
            &copy; 2018
            <a href="studentslogin.html" target="_blank">Team X</a>.
          </div>
        </div>
        <div class="col-md-6">
          <ul class="nav nav-footer justify-content-end">
            <li class="nav-item">
              <a href="aboutus.html" class="nav-link" target="_blank">About Us</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <!-- Core -->
  <script src="Bootstrap/vendor/jquery/jquery.min.js"></script>
  <script src="Bootstrap/vendor/popper/popper.min.js"></script>
  <script src="Bootstrap/vendor/bootstrap/bootstrap.min.js"></script>
  <script src="Bootstrap/vendor/headroom/headroom.min.js"></script>
  <!-- Argon JS -->
  <script src="Bootstrap/js/argon.js?v=1.0.1"></script>
</body>

</html> --%>






<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Login</title>
  <!-- Favicon -->
  <link href="Bootstrap/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="Bootstrap/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="Bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="Bootstrap/css/argon.css?v=1.0.1" rel="stylesheet">
  <!-- Docs CSS -->
  <link type="text/css" href="Bootstrap/css/docs.min.css" rel="stylesheet">
</head>

<style>
.form-popup {
  display: none;
  position: relative;
  bottom: 0;
  right: 15px;
  cursor: pointer;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 120px;
  float:left;
  padding:5px;
   cursor: pointer;
   margin-left:29px;
   margin-top:20px;
}
.form-container1 {
   cursor: pointer;
}

.form-container .btn {
 
  background-color: #F0F8FF;
  cursor: pointer;
  color:black;
  width: 100%;
  margin-bottom:10px;
  opacity: 1;
}

</style>

<script>
function openForm() {
    document.getElementById("myForm").style.display = "block";
}
</script>

<body class="bg-success">
  <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom">
      <div class="container">
        <a class="navbar-brand mr-lg-5" href="../index.html">
          
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
         
          <ul class="navbar-nav align-items-lg-center ml-lg-auto">
            <li class="nav-item d-none d-lg-block ml-lg-4">
              <a href="http://localhost:8080/MiniProject/Logout.jsp" target="" class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon">
                </span>
                <span class="nav-link-inner--text">Home</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <main>
    <section class="section section-shaped section-lg">
      <div class="shape shape-style-1 bg-gradient-success">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
       <!--  <span></span>
        <span></span>
        <span></span> -->
      </div>
      <div class="container pt-lg-md">
        <div class="row justify-content-center">
          <div class="col-lg-5">
          	<p class="font-weight-bold" style="font-size: 20px">User Login</p>
            <div class="card bg-secondary shadow border-0">
              <div class="card-body px-lg-5 py-lg-5">
                <form role="form" action="LoginController" method="post">

                   <div class="form-group">
                    <div class="input-group input-group-alternative mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-single-02"></i></span>
                      </div>
                      <input class="form-control" name="user_id" placeholder="User ID" type="text">
                    </div>
                  </div>
                 <div class="form-group">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input class="form-control" name="user_password" placeholder="Password" type="password">
                    </div>
                  </div>
                  <div class="text-center">
                    <input type="submit" value="Log In " class="btn btn-default">
                  </div>
                </form>
              </div>
            </div>
           <div class="form-container1">
            <div class="row mt-3">
             
              <div class="col-6 text-center">
        <h5><span class="text-dark" onclick="openForm()">Create an Account?</span></h5>   
                       
        </div>
        </div>
        
        <div class="form-popup" id="myForm">
        
         <div class="form-container">
           <a href="http://localhost:8080/MiniProject/LandingPage.jsp" type="submit" class="btn" ><font size="1px">Student</font></a>
         </div>
         <div class="form-container">
           <a href="http://localhost:8080/MiniProject/SigninTeachers.jsp" type="submit" class="btn" ><font size="1px">Teacher</font></a>
         </div>
         <div class="form-container">
        <a href="http://localhost:8080/MiniProject/SigninCoordinators.jsp" type="submit" class="btn" ><font size="1px">Coordinator</font></a>
         </div>
           
              <!--<div class="col-6 text-right">
             <a href="http://localhost:8080/Project/LandingPage.jsp" class="text-light"><small>Students?</small></a>
                   <br> 
                    <a href="http://localhost:8080/Project/SigninTeachers.jsp" class="text-light"><small>Teacher?</small></a>
                     <br>
                     <a href="http://localhost:8080/Project/SigninCoordinators.jsp" class="text-light"><small>Coordinator?</small></a>
                   </div>-->
            </div>
          </div>
        </div>
      </div>
      </div>
      
    </section>
  </main>
  <!-- <footer class="footer">
    <div class="container">
      <div class="row row-grid align-items-center mb-5">
        <div class="col-lg-6">
          <h4 class="mb-0 font-weight-light">Let's get in touch on any of these platforms.</h4>
        </div>
        <div class="col-lg-6 text-lg-center btn-wrapper">
          <a target="_blank" href="https://twitter.com" class="btn btn-neutral btn-icon-only btn-twitter btn-round btn-lg" data-toggle="tooltip" data-original-title="Follow us">
            <i class="fa fa-twitter"></i>
          </a>
          <a target="_blank" href="https://www.facebook.com" class="btn btn-neutral btn-icon-only btn-facebook btn-round btn-lg" data-toggle="tooltip" data-original-title="Like us">
            <i class="fa fa-facebook-square"></i>
          </a>
          <a target="_blank" href="https://github.com/creativetimofficial" class="btn btn-neutral btn-icon-only btn-github btn-round btn-lg" data-toggle="tooltip" data-original-title="Star on Github">
            <i class="fa fa-github"></i>
          </a>
        </div>
      </div>
      <hr>
      <div class="row align-items-center justify-content-md-between">
        <div class="col-md-6">
          <div class="copyright">
            &copy; 2018
            <a href="studentslogin.html" target="_blank">Team X</a>.
          </div>
        </div>
        <div class="col-md-6">
          <ul class="nav nav-footer justify-content-end">
            <li class="nav-item">
              <a href="aboutus.html" class="nav-link" target="_blank">About Us</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer> -->
  <!-- Core -->
  <script src="Bootstrap/vendor/jquery/jquery.min.js"></script>
  <script src="Bootstrap/vendor/popper/popper.min.js"></script>
  <script src="Bootstrap/vendor/bootstrap/bootstrap.min.js"></script>
  <script src="Bootstrap/vendor/headroom/headroom.min.js"></script>
  <!-- Argon JS -->
  <script src="Bootstrap/js/argon.js?v=1.0.1"></script>
</body>

</html>



















