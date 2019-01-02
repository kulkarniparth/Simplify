<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>

<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

<head>
  <title>Coordinator Sign-In</title>
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
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<style>

.stepwizard-step p {
    margin-top: 10px;
}
.stepwizard-row {
    display: table-row;
}
.stepwizard {
    display: table;
    width: 50%;
    position: relative;
}
.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}
.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;
}
.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}
.btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
}

</style>


</head>

<body>


 <header class="header-global">
    <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom">
      <div class="container">
       
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

              <a href="#mission"  class="btn btn-neutral btn-icon">
                <span class="btn-inner--icon">
                  <i class="fa fa-cloud-download mr-2"></i>
                </span>
                <span class="nav-link-inner--text">Home</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>




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
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
      
         
<div class="container">
  
<div class="stepwizard col-md-offset-3">
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary bg-default btn-circle" style="color:white"><i class="ni ni-single-02"></i></a>
        <p >Personal Details</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-default bg-default btn-circle" disabled="disabled"  style="color:white"><i class="ni ni-building"></i></a>
        <p>Login Details</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default bg-default btn-circle" disabled="disabled"  style="color:white">3</a>
        <p>Terms And Conditions</p>
      </div>
    </div>
  </div>
  
  <form role="form" action="SigninController" method="post">
  <input type="hidden" name="usertype" value="coordinator">
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 1</h3>
          <div class="form-group">
            <label class="control-label">User Id</label>
            <input  maxlength="100" type="text" class="form-control" required="required" placeholder="Enter User ID" name="coordinator_id" />
          </div>
          <div class="form-group">
            <label class="control-label">Name</label>
            <input maxlength="100" type="text" class="form-control" required="required" placeholder="Enter Full Nanme" name="coordinator_name"/>
          </div>
          <div class="form-group">
            <label class="control-label">Department</label>
            <input maxlength="100" type="text" class="form-control" required="required" placeholder="Enter Department" name="coordinator_dept"/>
          </div>
          <button class="btn btn-primary nextBtn btn-lg pull-right bg-default" style="color:white;" type="button" >Next</button>
        </div>
      </div>
    </div>
    <div class="row setup-content" id="step-2">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 2</h3>
          <div class="form-group">
            <label class="control-label">Email</label>
            <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Email" name="coordinator_email"/>
          </div>
          <div class="form-group">
            <label class="control-label">Password</label>
            <input maxlength="200" type="password" required="required" class="form-control" placeholder="Enter Password" name="coordinator_password" />
          </div>
          <button class="btn btn-primary nextBtn btn-lg pull-right bg-default" style="color:white;" type="button" >Next</button>
        </div>
      </div>
    </div>
    <div class="row setup-content" id="step-3">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 3</h3>
           <p style="font-size: 15px">By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
         	  <input  class="btn btn-default" type="submit" value="Sign-In">
        </div>
      </div>
      
    </div>
  </form>
  
</div>


    </section>
  </main>
  
  <script type="text/javascript">
  $(document).ready(function () {
	  var navListItems = $('div.setup-panel div a'),
	          allWells = $('.setup-content'),
	          allNextBtn = $('.nextBtn');

	  allWells.hide();

	  navListItems.click(function (e) {
	      e.preventDefault();
	      var $target = $($(this).attr('href')),
	              $item = $(this);

	      if (!$item.hasClass('disabled')) {
	          navListItems.removeClass('btn-primary').addClass('btn-default');
	          $item.addClass('btn-primary');
	          allWells.hide();
	          $target.show();
	          $target.find('input:eq(0)').focus();
	      }
	  });

	  allNextBtn.click(function(){
	      var curStep = $(this).closest(".setup-content"),
	          curStepBtn = curStep.attr("id"),
	          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
	          curInputs = curStep.find("input[type='text'],input[type='url']"),
	          isValid = true;

	      $(".form-group").removeClass("has-error");
	      for(var i=0; i<curInputs.length; i++){
	          if (!curInputs[i].validity.valid){
	              isValid = false;
	              $(curInputs[i]).closest(".form-group").addClass("has-error");
	          }
	      }

	      if (isValid)
	          nextStepWizard.removeAttr('disabled').trigger('click');
	  });

	  $('div.setup-panel div a.btn-primary').trigger('click');
	});
  
  </script>
  
  
<!--   <footer class="footer">
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

</html>     --%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

<head>
  <title>coordinator Sign-In</title>
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
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="jquery.min.js"></script>
<script src="jquery.validate.js"></script>
</head>
<style>

.container1 {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* Hide the browser's default radio button */
.container1 input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container1:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container1 input:checked ~ .checkmark {
    background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the indicator (dot/circle) when checked */
.container1 input:checked ~ .checkmark:after {
    display: block;
}

/* Style the indicator (dot/circle) */
.container1 .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
* {
  box-sizing: border-box;
}

/*.button {
    background-color: #4CAF50; /* Green 
    border: none;
    color: white;
    padding: 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button5 {border-radius: 50%;}*/

.button {
  border-radius: 4px;
  background-color: rgba(255, 255, 255, 0);
  border: none;
  color: black;
  text-align: center;
  font-size: 15px;
  padding: 20px;
  width: 97px;
  height: 60px;
  transition: all 0.5s;
  cursor: pointer;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
  color:#238480;
}

.card {
    background-color: rgba(255, 255, 255, .3);
    transition: 0.3s;
    width: 760px;
    height: 610px;
    margin-left:130px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container2 {
    position:center;
}

#regForm {
  background-color: #ffffff;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
   border: 2px solid #ccc;
}

input:focus  {
    border: 2px solid #555;
    }
    
/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}



/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #196360;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}


body {
    margin-top:40px;
}
.stepwizard-step p {
    margin-top: 10px;
}
.stepwizard-row {
    display: table-row;
}
.stepwizard {
    display: table;
    width: 50%;
    position: relative;
}
.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}
.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;
}
.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}
.btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
}

</style>

<script>
$(document).ready(function () {
	  var navListItems = $('div.setup-panel div a'),
	          allWells = $('.setup-content'),
	          allNextBtn = $('.nextBtn');

	  allWells.hide();

	  navListItems.click(function (e) {
	      e.preventDefault();
	      var $target = $($(this).attr('href')),
	              $item = $(this);

	      if (!$item.hasClass('disabled')) {
	          navListItems.removeClass('btn-primary').addClass('btn-default');
	          $item.addClass('btn-primary');
	          allWells.hide();
	          $target.show();
	          $target.find('input:eq(0)').focus();
	      }
	  });

	  allNextBtn.click(function(){
	      var curStep = $(this).closest(".setup-content"),
	          curStepBtn = curStep.attr("id"),
	          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
	          curInputs = curStep.find("input[type='text'],input[type='url']"),
	          isValid = true;

	      $(".form-group").removeClass("has-error");
	      for(var i=0; i<curInputs.length; i++){
	          if (!curInputs[i].validity.valid){
	              isValid = false;
	              $(curInputs[i]).closest(".form-group").addClass("has-error");
	          }
	      }

	      if (isValid)
	          nextStepWizard.removeAttr('disabled').trigger('click');
	  });

	  $('div.setup-panel div a.btn-primary').trigger('click');
	});


function ValidateName(inputText)
{
var nameformat =/^[a-zA-Z\s-, ]+$/;
if(inputText.value.match(nameformat))
{
return true;
}
else
{
alert("You have entered an invalid name!");
return false;
}
}

function ValidateEmail(inputText)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(inputText.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
return false;
}
}

function CheckPassword(inputtxt) 
{ 
var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
if(inputtxt.value.match(passw)) 
{ 
return true;
}
else
{ 
alert("Invaid Password! Enter again");
return false;
}
}
</script>

<body bgcolor="bg-success">
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
              <a href="http://localhost:8080/Project/Logout.jsp" target="_blank" class="btn btn-neutral btn-icon">
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
    <section class="section section-shaped section-lg" >
    <!--   <div class="shape shape-style-1 bg-gradient-success">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div> -->
      <div class="container">
    <div class="stepwizard col-md-offset-3">
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary btn-circle"><i class="ni ni-single-02"></i></a>
        <p><h5>Personal Details</p></h5>
      </div>
      <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-secondary btn-circle" disabled="disabled"><i class="ni ni-building"></i></a>
        <p><h5>Department Details</h5></p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-secondary btn-circle" disabled="disabled"><i class="ni ni-key-25"></i></a>
        <p><h5>Login Details</h5></p>
      </div>
    </div>
  </div>
  <div class="card">
  <div class="container2">
  <form role="form" action="SigninController" method="post">
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h2><font color=#196360><center>ABOUT</center></h2>
          <br>
          	<input type="hidden" name="usertype" value="coordinator">
           <div class="form-group">
            <h4><font color=#196360>Coordinator ID</font></h4>
            <input  maxlength="100" type="text" class="form-control" required="required" placeholder="Enter Coordinator ID"  name="coordinator_id"/>
          </div>
          <br>
          <div class="form-group">
            <h4><font color=#196360>Full Name</font></h4>
            <input  maxlength="100" type="text" class="form-control" required="required" placeholder="Enter Full Name" name="coordinator_name"/>
          </div>
          <br>
         <br>
          <button class="button nextBtn btn-lg pull-right "><span><font color=#238480>NEXT</font></span></button>
        </div>
      </div>
    </div>
     <div class="row setup-content" id="step-2">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
        <h2><font color=#196360><center>DEPARTMENT</center></h2>
           <br>
            <h4><font color=#196360>Choose Department:</font></h4>
            <br>
           <label class="container1"><h4>Computer</h4>
           <input type="radio" checked="checked" name="radio" value="COMP">
           <span class="checkmark"></span>
           </label>
           <label class="container1"><h4>I.T.</h4>
           <input type="radio" name="radio" value="IT">
           <span class="checkmark"></span>
           </label>
           <label class="container1"><h4>E&TC</h4>
           <input type="radio" name="radio" value="ENTC">
           <span class="checkmark"></span>
           </label>
           <br>
           <br>
         <button class="button nextBtn btn-lg pull-right "><span><font color=#238480>NEXT</font></span></button>
        </div>
      </div>
    </div>
    <div class="row setup-content" id="step-3">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
         <h2><font color=#196360><center>LOGIN</center></h2>
          <br>
          <div class="form-group">
            <h4><font color=#196360>Email</font></h4>
            <input maxlength="200" type="text"  class="form-control" required="required" placeholder="Enter Email" name="coordinator_email"/>
          </div>
          <br>
          <div class="form-group">
            <h4><font color=#196360>Set Password</font></h4>
            <input maxlength="200" type="password"  class="form-control" required="required" placeholder="Set Password"  name="coordinator_password"/>
          </div>
          <br>
          <div class="form-group">
             <h4><font color=#196360>Confirm Password</font></h4>
            <input maxlength="200" type="password" required="required" class="form-control" placeholder="Confirm Password"  />
          </div>
          <br>
          <br>
          <br>
          <br>
            <input type="Submit" value="Submit" class="btn btn-outline-secondary">
        </div>
      </div>
    </div>
   
  </form>
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

</html>





















