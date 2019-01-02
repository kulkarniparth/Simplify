<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Home</title>
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
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<style>
.mySlides {display:none;}
</style>

<body>
  <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom">
      <div class="container">
        <a class="navbar-brand mr-lg-5" href="../index.html">
          <img src="Bootstrap/img/brand/logo1.png" height="100px">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="navbar_global">
          <div class="navbar-collapse-header">
            <div class="row">
              <div class="col-6 collapse-brand">
                <a href="../index.html">
                  <img src="Bootstrap/img/brand/logo1.png" height="100px" width="100px">
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
          <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
          </ul>
          <ul class="navbar-nav align-items-lg-center ml-lg-auto">
            <li class="nav-item d-none d-lg-block ml-lg-4">

               <a href="#team"  class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon">
                  <i class="fa fa-cloud-download mr-2"></i>
                </span>
                <span class="nav-link-inner--text">Team</span>
              </a>
              <a href="#mission"  class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon">
                  <i class="fa fa-cloud-download mr-2"></i>
                </span>
                <span class="nav-link-inner--text">Mission</span>
              </a>
              <a href="http://localhost:8080/Mini_Project/Login.jsp" class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon">
                  <i class="fa fa-cloud-download mr-2"></i>
                </span>
                <span class="nav-link-inner--text">Login</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <main>
    <div class="position-relative">
      <!-- shape Hero -->
      <section class="section section-sm section-shaped pb-15" style="height:700px;width: 100%">
        <div class="shape shape-style-1 bg-gradient-default" style="height:700px;width: 100%">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="container py-lg-md ">
          <div class="col px-0">
            <div class="row">
              <div class="col-sm-4">
                <br>
                <div class="w3-content" style="  height: 800px;width:1000px">
                  <div class="mySlides w3-container card bg-gradient-info shadow-lg border-0">
                    <h1><b>Notice 1</b></h1>
                    <h1><i>Submission date : 20/7/2018</i></h1>
                    <h1 style="color: white">All students are requested to submit the abstract as well as the group information as soon as possibleto the Teacher in-charge.No abstracts will be accepted after the submission date.</h1>
                  </div>
                  <div class="mySlides w3-container card bg-gradient-info shadow-lg border-0">
                     <h1><b>Notice 2</b></h1>
                      <h1><i>Review1 date : 07/9/2018</i></h1>
                      <h1 style="color: white">All students are requested to be present for the 1st review of the Project which will be done by the Teacher in-charge.No Reviews will be accepted after the mentioned date.Make sure you have the working model of ur project</h1>
                  </div>
                </div>

                <script>
                var slideIndex = 0;
                carousel();

                function carousel() {
                    var i;
                    var x = document.getElementsByClassName("mySlides");
                    for (i = 0; i < x.length; i++) {
                      x[i].style.display = "none"; 
                    }
                    slideIndex++;
                    if (slideIndex > x.length) {slideIndex = 1} 
                    x[slideIndex-1].style.display = "block"; 
                    setTimeout(carousel, 5000); 
                }
                </script>
                
              </div>
            </div>
          </div>
        </div>
         <div class="separator separator-bottom separator-skew">
          <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
            <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
          </svg>
        </div>

      </section>
      <!-- 1st Hero Variation -->
    </div>

    <section class="section section-lg" id="team">
      <div class="container">
        <div class="row justify-content-center text-center mb-lg">
          <div class="col-lg-4">
            <h2 class="display-3">The amazing Team</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="px-4">
              <img src="Bootstrap/img/theme/siddhi.jpg" class="rounded-circle img-center img-fluid shadow shadow-lg--hover" style="width: 200px;">
              <div class="pt-4 text-center">
                <h5 class="title">
                  <span class="d-block mb-1">Siddhi Inamdar</span>
                  <small class="h6 text-muted">Web Developer</small>
                </h5>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="px-4">
              <img src="Bootstrap/img/theme/shreya.jpg" class="rounded-circle img-center img-fluid shadow shadow-lg--hover" style="width: 200px;">
              <div class="pt-4 text-center">
                <h5 class="title">
                  <span class="d-block mb-1">Shreya Narkar</span>
                  <small class="h6 text-muted">Backend Developer</small>
                </h5>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="px-4">
              <img src="Bootstrap/img/theme/parth.jpg" class="rounded-circle img-center img-fluid shadow shadow-lg--hover" style="width: 200px;">
              <div class="pt-4 text-center">
                <h5 class="title">
                  <span class="d-block mb-1">Parth Kulkarni</span>
                  <small class="h6 text-muted">A Coder</small>
                </h5>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="px-4">
              <img src="Bootstrap/img/theme/yakshit.jpg" class="rounded-circle img-center img-fluid shadow shadow-lg--hover" style="width: 200px;">
              <div class="pt-4 text-center">
                <h5 class="title">
                  <span class="d-block mb-1">Yakshit Jain</span>
                  <small class="h6 text-muted">Web Developer</small>
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="section section-lg pt-0" id="mission">
      <div class="container">
        <div class="card bg-gradient-default shadow-lg border-0">
          <div class="p-5">
            <div class="row align-items-center">
              <div class="col-lg-8">
                <h3 class="text-white">We made Project Management easier for you.</h3>
                <p class="lead text-white mt-3">A sincere effort to reduce all the problems faced due to the traditional way of Evaluating Mini-Projects</p>
              </div>
              <div class="col-lg-3 ml-lg-auto">
                <a href="http://localhost:8080/Mini_Project/Login.jsp" class="btn btn-lg btn-block btn-white">Login</a>
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
  <script src="../assets/js/argon.js?v=1.0.1"></script>
</body>

</html>