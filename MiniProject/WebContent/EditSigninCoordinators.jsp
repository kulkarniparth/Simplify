<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="entities.Technology"%>
<%@page import="entities.Review1"%>
<%@page import="entities.Review2"%>
<%@page import="entities.Review3"%>
<%@page import="entities.Project"%>
<%@page import="jdbc_student.Jdbc"%>
<%@page import="entities.Teacher"%>
<%@page import="entities.Coordinator" %>
<%@page import="java.util.*" %>
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

 		<% 
      			Coordinator coordinator=new Coordinator();
 				coordinator=(Coordinator)session.getAttribute("coordinator_info");
 				
      	%>


<body>

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
      
       <a href="http://localhost:8080/MiniProject/Logout.jsp" target="_blank" class="btn btn-neutral btn-icon">HOME</a>
    <br><br><br>
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
  
  <form role="form" action="UpdateServlet" method="post">
  <input type="hidden" name="usertype" value=<%=coordinator.getCoordinator_id() %>>
    <div class="row setup-content" id="step-1">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 1</h3>
          <div class="form-group">
            <label class="control-label">User Id</label>
            <input  maxlength="100" type="text" class="form-control" required="required" placeholder="Enter User ID" value=<%=coordinator.getCoordinator_id()%> name="coordinator_id" readonly/>
          </div>
          <div class="form-group">
            <label class="control-label">Name</label>
            <input maxlength="100" type="text" class="form-control" required="required" placeholder="Enter Full Nanme" value=<%=coordinator.getCoordinator_name() %> name="coordinator_name"/>
          </div>
          <div class="form-group">
            <label class="control-label">Department</label>
            <input maxlength="100" type="text" class="form-control" required="required" placeholder="Enter Department" value=<%=coordinator.getCoordinator_dept() %> name="coordinator_dept"/>
          </div>
          <button class="btn btn-primary nextBtn btn-lg pull-right bg-default" style="color:white" type="button" >Next</button>
        </div>
      </div>
    </div>
    <div class="row setup-content" id="step-2">
      <div class="col-xs-6 col-md-offset-3">
        <div class="col-md-12">
          <h3> Step 2</h3>
          <div class="form-group">
            <label class="control-label">Email</label>
            <input maxlength="200" type="text" required="required" class="form-control" placeholder="Enter Email" value=<%=coordinator.getCoordinator_email() %> name="coordinator_email"/>
          </div>
          <div class="form-group">
            <label class="control-label">Password</label>
            <input maxlength="200" type="password" required="required" class="form-control" placeholder="Enter Password" value=<%=coordinator.getCoordinator_password() %> name="coordinator_password" />
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

</html>    