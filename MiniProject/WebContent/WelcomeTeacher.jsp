<%-- <!DOCTYPE html>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="entities.Technology"%>
<%@page import="entities.Review1"%>
<%@page import="entities.Review2"%>
<%@page import="entities.Review3"%>
<%@page import="entities.Project"%>
<%@page import="jdbc_student.Jdbc"%>
<%@page import="entities.Teacher"%>
<%@page import="entities.Student"%>
<%@page import="java.util.*" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
      	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>Teachers</title>
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
      
      	<% 
      			Teacher teacher=new Teacher();
      			teacher=(Teacher)session.getAttribute("teacher_info");
      	%>
      	
      	<%
      			Jdbc projectslist=new Jdbc();
      			List<Project>projects=(List<Project>)projectslist.listProjects(teacher.getTeacher_id());
      	%>
      
      	<%
      			Jdbc archives=new Jdbc();
      			List<Project>archiveslist=(List<Project>)archives.listArchivesProjects(teacher.getTeacher_id(),"2013");
      	%>
      	
      	<%
      			Jdbc review1=new Jdbc();
      			Jdbc review2=new Jdbc();
      			Jdbc review3=new Jdbc();
      	%>
      	
      	<%
      		Jdbc tech1=new Jdbc();
      		List<Technology>techs1=(List<Technology>)tech1.listTechInfo();
      	%>
      	
      	
      <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
          <div class="container">
            <a class="navbar-brand"><h2>Hi <%=teacher.getTeacher_name()%></h2></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-default" aria-controls="navbar-default" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar-default">
              <div class="navbar-collapse-header">
                <div class="row">
                  <div class="col-6 collapse-brand">
                    <a href="index.html">
                      <img src="assets/img/brand/blue.png">
                    </a>
                  </div>
                  <div class="col-6 collapse-close">
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-default" aria-controls="navbar-default" aria-expanded="false" aria-label="Toggle navigation">
                      <span></span>
                      <span></span>
                    </button>
                  </div>
                </div>
              </div>

              <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item">
               	 
                
                  <a class="nav-link" href="http://localhost:8080/MiniProject/Logout.jsp">Log out
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

        <section>
        <div class="container-fluid transparent" style="height: 90vh;">
          <div class="row " >
            <div class="col-lg-2" style="height: 90vh;">
              <div class="nav-wrapper">
              <ul class="nav nav-pills nav-fill flex-column flex-md-row" id="tabs-icons-text" role="tablist">
                
                <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-2 active" id="tabs-icons-text-5-tab" data-toggle="tab" href="#tabs-icons-text-5" role="tab" aria-controls="tabs-icons-text-3" aria-selected="false"><i class="ni ni-calendar-grid-58 mr-2"></i>Profile</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-2 " id="tabs-icons-text-1-tab" data-toggle="tab" href="#tabs-icons-text-1" role="tab" aria-controls="tabs-icons-text-1" aria-selected="true"><i class="ni ni-cloud-upload-96 mr-2"></i>List Projects</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-2" id="tabs-icons-text-2-tab" data-toggle="tab" href="#tabs-icons-text-2" role="tab" aria-controls="tabs-icons-text-2" aria-selected="false"><i class="ni ni-bell-55 mr-2"></i>Filters</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-2" id="tabs-icons-text-3-tab" data-toggle="tab" href="#tabs-icons-text-3" role="tab" aria-controls="tabs-icons-text-3" aria-selected="false"><i class="ni ni-calendar-grid-58 mr-2"></i>Evaluate</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-2" id="tabs-icons-text-4-tab" data-toggle="tab" href="#tabs-icons-text-4" role="tab" aria-controls="tabs-icons-text-3" aria-selected="false"><i class="ni ni-calendar-grid-58 mr-2"></i>Archives</a>
                </li>
                           
                 <li class="nav-item">
                    <a class="nav-link mb-sm-3 mb-md-2" id="tabs-icons-text-6-tab" data-toggle="tab" href="#tabs-icons-text-6" role="tab" aria-controls="tabs-icons-text-3" aria-selected="false"><i class="ni ni-calendar-grid-58 mr-2"></i>Reports</a>
                </li>   
              </ul>
            </div>
          </div>

          <div class="col-lg-10">
              <div class="card shadow">
      <div class="card-body" >
          <div class="tab-content" id="myTabContent">


<!-- Tab projects -->
              <div class="tab-pane fade" style="overflow-y:auto;" id="tabs-icons-text-1" role="tabpanel" aria-labelledby="tabs-icons-text-1-tab">
              
              <strong>Projects List</strong><br>
              <%if(projects!=null){ %>
                <section class="section section-lg pt-lg-0 mt--500">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-12">
                        <div class="row row-grid">
							<% for(Project tmp:projects){ %>
								
								  <div class="col-lg-4 mt-4">
		                            <div class="card card-lift--hover shadow border-0">
		                              <div class="card-body py-5">
		                              	<div align="right">
		                              	<span class="badge badge-secondary"><%=tmp.getProject_date().substring(0,4)%></span>
		                              	<br>
		                              	</div>
		                                <div class="icon icon-shape icon-shape-primary rounded-circle mb-4">
		                                  <b><%=tmp.getProject_id() %></b>
		                                </div>
		                                
		                                <h5 class="text-primary text-uppercase"><strong><%=tmp.getProject_title() %></strong></h5>
										<h6 class="text-primary text"><i><%=tmp.getProject_domain() %></i></h6>		                                
		                                <p class="description mt-3"><%=tmp.getProject_description()%>...</p>
		                                <div>	      	
									      	<%
									      			Jdbc technologies=new Jdbc();
									      			List<Technology>techs=technologies.getProjectTechInfo(tmp.getProject_id());
									      	%>
			                                
		                                 	<% for(Technology t : techs){ %>
			                             	  <span class="badge badge-pill badge-info"><%=t.getTechnology_name()%></span>
			                             	  <%} %>
			                             	  <br>
			                             	  <br>
			                             	  
			                             	  <div align="center">
												<% 
													Jdbc studentForProject=new Jdbc();
													List<Student>students=studentForProject.studentProject(tmp.getProject_id());
												%>
												<%for(Student s:students){%>
													<a href="#" class="badge badge-primary"><%=s.getStudent_name()%></a>
												<%} %>
			                             	  </div> 
		                              	</div>
									     		
									            <%
									            	Jdbc progress=new Jdbc();
									            	Review1 r1=new Review1();
									            	Review2 r2=new Review2();
									            	Review3 r3=new Review3();
									            	
									            	r1=progress.getReview1Info(tmp.getProject_id());
									            	r2=progress.getReview2Info(tmp.getProject_id());
									            	r3=progress.getReview3Info(tmp.getProject_id());
									            	
									            	float percent=0;
									            	if(r1!=null){
									            	if(r1.getReview1_marks()!=0){
									            		percent+=1;
									            	}
									            	}
									            	if(r2!=null){
									            	if(r2.getReview2_marks()!=0){
									            		percent+=1;
									            	}
									            	}
									            	if(r3!=null){
									            	if(r3.getReview3_marks()!=0){
									            		percent+=1;
									            	}
									            	}
									            	System.out.println("percentage is "+percent);
									            	percent=percent/3;
									            	percent=percent*100;
									            %>
									            <div class="progress-wrapper">
												  <div class="progress-info">
												    <div class="progress-label">
												      <span>Task completed</span>
												    </div>
												    <div class="progress-percentage">
												      <span><%=Math.round(percent)%>%</span>
												    </div>
												  </div>
												  <div class="progress">
												    <div class="progress-bar bg-success" role="progressbar" aria-valuenow="<%=percent %>" aria-valuemin="0" aria-valuemax="100" style="width: <%=percent%>%;"></div>
												  </div>
												</div>
									            
									                              	

			                            
		                              </div>
		                            </div>
		                          </div>
									
                        <% } %>
                        </div>
                      </div>
                    </div>
                  </div>
                </section>
                		<%}else{ %>
                        	<h1 class="text-primary text-uppercase">no projects found.</h1>
                        <% }%>
              </div>
			  
			  
			  
			 <!--  Tab Reports -->
		  <div class="tab-pane fade" id="tabs-icons-text-6" role="tabpanel" aria-labelledby="tabs-icons-text-6-tab">
			<table border="1" width="25%" cellpadding="5">
            <thead> 
               <th colspan="3">Uploaded Files</th>        
            </thead>
                <tbody>
                    <tr>
                      <td><center><b>Id</b></center></td>

                      <td><center><b>File Name</b></center></td>
                      <td><center><b>File</b></center></td>
                    </tr>
                    
                    <%
                        try
                        {
                                Jdbc dbconn=new Jdbc();
                                Connection myconnection= dbconn.Connection();
                                String sqlString = "select id,title,file from files,projects where files.project_id = projects.project_id and projects.teacher_id=?";
                                PreparedStatement preparedStatement=myconnection.prepareStatement(sqlString);
                                preparedStatement.setString(1,teacher.getTeacher_id());
                                ResultSet rs=preparedStatement.executeQuery();
                                
                                if(!rs.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="3"><center><%out.print("No Files!"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
                                while(rs.next())
                                {   
                            %>
                                    <tr>
                                    	<td><center><%out.print(rs.getString("id")); %></center></td>
                                        <td><center><%out.print(rs.getString("title")); %></center></td>
                                        <td><center><a href="view_file.jsp?id=<%out.print(rs.getString("id"));%>">View</a></center></td>
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
        </table>
                            
                            <%
                                rs.close();
                                preparedStatement.close();
                                myconnection.close();
                        }catch(Exception e){e.printStackTrace();}    
                        
                    %>
            
        
   </div>
			  
			  
 
 
<!-- Tab filters -->      
<div class="tab-pane fade" id="tabs-icons-text-2" role="tabpanel" aria-labelledby="tabs-icons-text-2-tab">
		<form action="TeacherController" method="post">
		<input type="hidden" name="user_id" value=<%=teacher.getTeacher_id()%>>
		<div class="container">
			<div class="col-sm-5">
				<strong>Select by Technology</strong><br>
				<select class="form-control" name="tech_selected" onchange="this.form.submit();">
					<option value="0">select technology</option>
					<%for(Technology t:techs1){%>
						<option value=<%=t.getTechnology_id()%>><%=t.getTechnology_name()%>												
					<%} %>					
				</select>
			</div>
		</div>
		</form>
		


                <section class="section section-lg pt-lg-0 mt--500">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-12">
                        <div class="row row-grid">
				      	<%
				      		if(session.getAttribute("project_tech_list")!=null)
				      		{
				      			List<Project>project_tech_list=(List<Project>)session.getAttribute("project_tech_list");
				      			for(Project tmp:project_tech_list){ %>
				      				
								  <div class="col-lg-4 mt-4">
		                            <div class="card card-lift--hover shadow border-0">
		                              <div class="card-body py-5">
		                                <div class="icon icon-shape icon-shape-primary rounded-circle mb-4">
		                                  <b><%=tmp.getProject_id() %></b>
		                                </div>
		                                <h6 class="text-primary text-uppercase"><%=tmp.getProject_title() %></h6>
		                                <p class="description mt-3"><%=tmp.getProject_description()%>...</p>
		                                <div>
		                                	
      	
									      	<%
									      			Jdbc technologies=new Jdbc();
									      			List<Technology>techs=technologies.getProjectTechInfo(tmp.getProject_id());
									      	%>
			                                
		                                 	<% for(Technology t : techs){ %>
			                             	  <span class="badge badge-pill badge-info"><%=t.getTechnology_name()%></span>
			                             	  <%} %>
		                              </div>
		                                <!-- Modal comes here -->
		                              </div>
		                            </div>
		                          </div>
													      				
				      		
				      		<%}
				      			} %>
				      	
                        </div>
                      </div>
                    </div>
                  </div>
                </section>
		
		
		
		
		
		
		
		
		
		
		            
</div>
              

<!-- Tab Evaluate -->              
              	<div class="tab-pane fade" id="tabs-icons-text-3" role="tabpanel" aria-labelledby="tabs-icons-text-3-tab">
			
					<div class="card bg-secondary shadow border-0">
					    <div class="card-header bg-white pb-5">
					        <div class="text-muted text-center mb-3"><small>Enter Project Details</small></div>
					        <div class="btn-wrapper text-center">
					        </div>
					    </div>
					    <div class="card-body px-lg-5 py-lg-5">
	
					        <form role="form" action="TeacherController" method="post">
								<input type="hidden" name="user_id" value=<%=teacher.getTeacher_id()%>>					            
					            <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					                    <select name="project_selected" class="form-control">
					            	        <option value="0">select project</option>
					                    	<%for(Project tmp:projects){ %>
					                    		<option value=<%=tmp.getProject_id() %>><%=tmp.getProject_title() %>
					                    	<%} %>
					                    </select>
					                </div>
					            </div>
					            
					            <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					                    <select name="review_selected" class="form-control">
					                    	<option value="0" class="dropdown-item">select review</option>
					                    	<option value="1" class="dropdown-item">review 1</option>
					                    	<option value="2" class="dropdown-item">review 2</option>
					                    	<option value="3" class="dropdown-item">review 3</option>
					                    </select>
					                </div>
					            </div>
					            
					            <input type="text" class="form-control" name="marks" placeholder="enter marks out of 20"> 
					            <br>
					            <textarea class="form-control" rows="3" name="comments" placeholder="Write suggestions and comments here ..."></textarea>

					            <div class="text-center">
					            	<input type="submit" value="Submit" class="btn btn-primary my-4">
					            </div>
					            
					        </form>
					    </div>
					</div>
					
					
					
				</div>
              
              
<!-- Tab Archives -->
      
              <div class="tab-pane fade" id="tabs-icons-text-4" role="tabpanel" aria-labelledby="tabs-icons-text-4-tab">
				<form action="TeacherController" method="post">
					<input type="hidden" name="user_id" value=<%=teacher.getTeacher_id()%>>
						<div class="container">
							<div class="col-sm-5">
								<strong>Select by Year</strong><br>
								<select class="form-control" name="year_selected" onchange="this.form.submit();">
									<option value="0">select year</option>
									<%for(int i=2018;i>=2010;i--){%>
										<option value=<%=i%>><%=i%>												
									<%} %>					
								</select>
							</div>
						</div>
				</form>
		


                <section class="section section-lg pt-lg-0 mt--500">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-12">
                        <div class="row row-grid">
				      	<%
				      		if(session.getAttribute("project_year_list")!=null)
				      		{
				      			List<Project>project_year_list=(List<Project>)session.getAttribute("project_year_list");
				      			for(Project tmp:project_year_list){ %>
				      				
								  <div class="col-lg-4 mt-4">
		                            <div class="card card-lift--hover shadow border-0">
		                              <div class="card-body py-5">
		                                <div class="icon icon-shape icon-shape-primary rounded-circle mb-4">
		                                  <b><%=tmp.getProject_id() %></b>
		                                </div>
		                                <h6 class="text-primary text-uppercase"><%=tmp.getProject_title() %></h6>
		                                <p class="description mt-3"><%=tmp.getProject_description()%>...</p>
		                                <div>
		                                	
      	
									      	<%
									      			Jdbc technologies=new Jdbc();
									      			List<Technology>techs=technologies.getProjectTechInfo(tmp.getProject_id());
									      	%>
			                                
		                                 	<% for(Technology t : techs){ %>
			                             	  <span class="badge badge-pill badge-info"><%=t.getTechnology_name()%></span>
			                             	  <%} %>
		                              </div>
		                                <!-- Modal comes here -->
		                              </div>
		                            </div>
		                          </div>
													      				
				      		
				      		<%}
				      			} %>
				      	
                        </div>
                      </div>
                    </div>
                  </div>
                </section>
                
                
                  
                  
                  
                  
                  
                  
              </div>
              

<!-- Tab Profile -->
              <div class="tab-pane fade show active" id="tabs-icons-text-5" role="tabpanel" aria-labelledby="tabs-icons-text-5-tab">

				
					  <main class="profile-page">
					    <section class="section-profile-cover section-shaped my-0">
					      <!-- Circles background -->
					      <!-- SVG separator -->
					    </section>
					    <section class="section">
					      <div class="container">
					        <div class="card card-profile shadow mt--300">
					          <div class="px-4">
					            <div class="row justify-content-center">
					              <div class="col-lg-3 order-lg-2">
					                <div class="card-profile-image">
					                  <a href="#">
					                  	<div class="icon icon-shape icon-shape-primary rounded-circle mb-4">
							                <b><%=teacher.getTeacher_id() %></b>
						                </div>
					                  </a>
					                </div>
					              </div>
					              <div class="col-lg-4 order-lg-3 text-lg-right align-self-lg-center">
					              </div>
					            </div>
					            <div class="text-center mt-5">
					              <h3><%=teacher.getTeacher_name()%>
					                <span class="font-weight-light">, <%=projects.size()%> projects</span>
					              </h3>
					              <div class="h6 font-weight-300"><i class="ni location_pin mr-2"></i>Department of <%=teacher.getTeacher_dept() %>
					              </div>
					              <div class="h6 mt-4"><i class="ni business_briefcase-24 mr-2"></i><%=teacher.getTeacher_email()%></div>
					              <div><i class="ni education_hat mr-2"></i>PICT</div>
					            </div>
					            <div class="mt-5 py-5 border-top text-center">
					              <div class="row justify-content-center">
					              	<div class="col-lg-9">
					              	<h5>Projects under your mentorship...</h5><br>
					              	<ol>
					              		<%for(Project tmp:projects){ %>
					              			<li><%=tmp.getProject_title() %>
					              		<%} %>
					              	</ol>	
					              </div>
					            </div>
					          </div>
					        </div>
					      </div>
					    </section>
					  </main>
              </div>
              
          </div>
      </div>
  </div>
            </div>

          </div>
        </div>
		</div>
      </section>

        <!-- Core -->
        <script src="Bootstrap/vendor/jquery/jquery.min.js"></script>
        <script src="Bootstrap/vendor/popper/popper.min.js"></script>
        <script src="Bootstrap/vendor/bootstrap/bootstrap.min.js"></script>
        <script src="Bootstrap/vendor/headroom/headroom.min.js"></script>
        <!-- Optional JS -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		
        <script src="Bootstrap/vendor/onscreen/onscreen.min.js"></script>
        <script src="Bootstrap/vendor/nouislider/js/nouislider.min.js"></script>
        <script src="Bootstrap/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/vendor/headroom/headroom.min.js"></script>
        <!-- Argon JS -->
        <script src="Bootstrap/js/argon.js?v=1.0.1"></script>  
      </body>
      </html> --%>
    
    
    
    
    
    <!DOCTYPE html>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="entities.Technology"%>
<%@page import="entities.Review1"%>
<%@page import="entities.Review2"%>
<%@page import="entities.Review3"%>
<%@page import="entities.Project"%>
<%@page import="jdbc_student.Jdbc"%>
<%@page import="entities.Teacher"%>
<%@page import="entities.Student"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<html>
      	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
        <meta name="author" content="Creative Tim">
        <title>Teachers</title>
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
         <link type="text/css" href="Bootstrap/css/direction-reveal.css" rel="stylesheet">       
		</head>
      
      	<% 
      			Teacher teacher=new Teacher();
      			teacher=(Teacher)session.getAttribute("teacher_info");
      	%>
      	
      	<%
      			Jdbc projectslist=new Jdbc();
      			List<Project>projects=(List<Project>)projectslist.listProjects(teacher.getTeacher_id());
      	%>
      
      	
      	<%
      			Jdbc review1=new Jdbc();
      			Jdbc review2=new Jdbc();
      			Jdbc review3=new Jdbc();
      	%>
      	
      	<%
      		Jdbc tech1=new Jdbc();
      		List<Technology>techs1=(List<Technology>)tech1.listTechInfo();
      	%>
      	
      	
      <body>
      
      
      <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    <div class="container-fluid">
      <!-- Toggler -->
      <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button> -->
      <!-- Brand -->
      <div class="navbar-brand bg-success  text-white align-items-center " style="border-radius:0.2rem">
        <div> <%=teacher.getTeacher_name()%></div>
      </div>
      <!-- User -->
     <!--  <ul class="nav align-items-center d-md-none">
        <li class="nav-item dropdown">
          <a class="nav-link nav-link-icon" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="ni ni-bell-55"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" aria-labelledby="navbar-default_dropdown_1">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <div class="media align-items-center">
              <span class="avatar avatar-sm rounded-circle">
                <img alt="Image placeholder" src="./assets/img/theme/team-1-800x800.jpg">
              </span>
            </div>
          </a>
          <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
            <div class=" dropdown-header noti-title">
              <h6 class="text-overflow m-0">Welcome!</h6>
            </div>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-single-02"></i>
              <span>My profile</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-settings-gear-65"></i>
              <span>Settings</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-calendar-grid-58"></i>
              <span>Activity</span>
            </a>
            <a href="./examples/profile.html" class="dropdown-item">
              <i class="ni ni-support-16"></i>
              <span>Support</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#!" class="dropdown-item">
              <i class="ni ni-user-run"></i>
              <span>Logout</span>
            </a>
          </div>
        </li>
      </ul> -->
      <!-- Collapse -->
      <div class="collapse navbar-collapse" id="sidenav-collapse-main">
        <!-- Collapse header -->
       <!--  <div class="navbar-collapse-header d-md-none">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a href="./index.html">
                <img src="./assets/img/brand/blue.png">
              </a>
            </div>
            <div class="col-6 collapse-close">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                <span></span>
                <span></span>
              </button>
            </div>
          </div>
        </div> -->
        <!-- Form -->
        <!-- <form class="mt-4 mb-3 d-md-none">
          <div class="input-group input-group-rounded input-group-merge">
            <input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
            <div class="input-group-prepend">
              <div class="input-group-text">
                <span class="fa fa-search"></span>
              </div>
            </div>
          </div>
        </form> -->
        <!-- Navigation -->
        <ul class="navbar-nav nav nav-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active " id="User_Profile-tab" data-toggle="tab"  href="#User_Profile"  role="tab"   aria-controls="User_Profile" aria-selected="true">
              <i class="ni ni-single-02 text-green"></i> User Profile
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link"  id="Edit_Profile-tab" data-toggle="tab"  href="#Edit_Profile"  role="tab"  aria-controls="Edit_Profile" aria-selected="false">
              <i class="ni ni-app text-green"></i> Edit Profile
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  id="Projects_List-tab" data-toggle="tab"  href="#Projects_List"  role="tab"  aria-controls="Projects_List" aria-selected="false">
              <i class="ni ni-app text-green"></i> List of Projects
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  id="Projects_Report-tab" data-toggle="tab"  href="#Projects_Report"  role="tab"  aria-controls="Projects_Report" aria-selected="false">
              <i class="ni ni-app text-green"></i> Project Reports
            </a>
          </li>
            <li class="nav-item">
            <a class="nav-link"  id="Projects_Filters-tab" data-toggle="tab"  href="#Projects_Filters"  role="tab"  aria-controls="Projects_Filters" aria-selected="false">
              <i class="ni ni-app text-green"></i> Filters
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  id="Previous_Projects-tab" data-toggle="tab"  href="#Previous_Projects"  role="tab"  aria-controls="Previous_Projects" aria-selected="true">
              <i class="ni ni-archive-2 text-green"></i> Projects Archive
            </a>
          </li>
        

          
        </ul>
        <!-- Divider -->
        <hr class="my-3">
        <!-- Heading -->
        <!--<h6 class="navbar-heading text-muted">Documentation</h6> -->
        <!-- Navigation -->
       <!-- <ul class="navbar-nav mb-md-3">
          <li class="nav-item">
            <a class="nav-link" href="https://demos.creative-tim.com/argon-dashboard/docs/getting-started/overview.html">
              <i class="ni ni-spaceship"></i> Getting started
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://demos.creative-tim.com/argon-dashboard/docs/foundation/colors.html">
              <i class="ni ni-palette"></i> Foundation
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://demos.creative-tim.com/argon-dashboard/docs/components/alerts.html">
              <i class="ni ni-ui-04"></i> Components
            </a>
          </li>
        </ul> -->
      </div>
    </div>
  </nav>
  <!-- Main content -->
  <div class="main-content "  >


    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <div class="h2 mb-0 text-white text-uppercase d-none d-lg-inline-block " href="./index.html">IT DEPARTMENT MINI-PROJECT MANAGEMENT PORTAL</div>
        <!-- Form -->
        <div class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
    
            <div class="input-group input-group-alternative px-3 py-2 text-white " id="dateandtime"></div>
          
        </div>

        <script>
          setInterval(timer,1000);
          function timer(){var d = new Date(); document.getElementById("dateandtime").innerHTML = d.toUTCString();}
        </script>
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm btn btn-danger">Logout</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">Are You Sure?</h6>
              </div>
              <a href="#" class="dropdown-item">
                <i class="ni ni-check-bold"></i>
                <span>Yes</span>
              </a>
              <a href="#" class="dropdown-item">
                <i class="ni ni-fat-remove"></i>
                <span>No</span>
              </a>
              
             
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- Header -->
    <div class="header bg-gradient-success pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          <!-- Card stats -->
          <!-- <div class="row">
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Traffic</h5>
                      <span class="h2 font-weight-bold mb-0">350,897</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                        <i class="fas fa-chart-bar"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                    <span class="text-nowrap">Since last month</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">New users</h5>
                      <span class="h2 font-weight-bold mb-0">2,356</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                        <i class="fas fa-chart-pie"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 3.48%</span>
                    <span class="text-nowrap">Since last week</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Sales</h5>
                      <span class="h2 font-weight-bold mb-0">924</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                        <i class="fas fa-users"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                    <span class="text-nowrap">Since yesterday</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Performance</h5>
                      <span class="h2 font-weight-bold mb-0">49,65%</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                        <i class="fas fa-percent"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                    <span class="text-nowrap">Since last month</span>
                  </p>
                </div>
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="tab-content" id="myTabContent">
    <div class="container-fluid mt--7 tab-pane fade show active" id="User_Profile" role="tabpanel" aria-labelledby="User_Profile-tab">
    	   <div class="col-lg-4 my-2" style=" margin-left:350px">
          <div class="card  border-0 w-100 shadow  direction-reveal__card">
                  <div class="card-body p-0  w-100 direction-reveal__anim--out">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                  <a href="#">
                    <img src="" class="rounded-circle">
                  </a>
                </div>
              </div>
            </div>
            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
              <div class="d-flex justify-content-between">
              </div>
            </div>
            <div class="card-body pt-0 pt-md-4">
          
              <div class="text-center">
                <h2>
                   <%=teacher.getTeacher_name()%><span class="font-weight-light">, <%=projects.size()%> project(s)</span>
                </h2>
                <div class="h4 font-weight-300">
                  <i class="ni location_pin mr-2"></i>Department of <%=teacher.getTeacher_dept() %>
                </div>
                <div class="h4 mt-4">
                  <i class="ni business_briefcase-24 mr-2"></i><%=teacher.getTeacher_email()%>
                </div>
                <div>
                  <i class="ni education_hat mr-2"></i>PICT
                </div>
              
			  </div>
              </div>
            </div>
          </div>
        </div>
    </div>

     <div class="container-fluid mt--7 tab-pane fade" id="Projects_List" role="tabpanel" aria-labelledby="Projects_List-tab">
     
		 <%if(projects!=null){ %>
     	<div class="row  py-3 mb-xl-0  shadow border-0 ">
     	
     		 
              <% for(Project tmp:projects){ %>
               <div class="col-lg-4 my-2   direction-reveal  direction-reveal--demo-slide-push ">
                <div class="card  border-0 w-100 shadow  direction-reveal__card">
                  <div class="card-body p-0  w-100 direction-reveal__anim--out">
                   	<div class="d-flex justify-content-center py-4 bg-green">
                    <div class="icon-lg h1 icon-shape  bg-white "><%=tmp.getProject_id() %></div>
                		</div>
                    <h3 class="text-success text-uppercase text-center py-5 "><%=tmp.getProject_title() %> </h3>
                  </div>
                   <div class="direction-reveal__overlay direction-reveal__anim--in p-0">
                   	<div class="card shadow">
                   		<div class="card-body ">
                   			
                	<ul class="list-unstyled m-0">
                	<% 
													Jdbc studentForProject=new Jdbc();
													List<Student>students=studentForProject.studentProject(tmp.getProject_id());
												%>
                	<%for(Student s:students){%>
                     <li >
                  <div class="d-flex  ">
                    <div>
                      <div class="badge badge-pill bg-gradient-success mr-3">
                      </div>
                    </div>
                    <div>
                     <p class=" text-default font-weight-normal "><%=s.getStudent_name()%></p>
                    </div>
                  </div>
                </li>
                <%} %>
                  
					</ul>
        <a href="#" class="btn btn-success " data-toggle="modal" data-target="#Project<%=tmp.getProject_id() %>">Learn more</a>
         				</div>
         </div>
        </div>
                </div>

              </div> 
              <% } %>
              
		<%}else{ %>
							<div class="row  py-3 mb-xl-0  shadow ">
							 <div class="col-lg-12 my-2    ">
							  <div class="card   w-100 shadow text-center ">
                        	<h1 class="text-success text-uppercase " >No Projects Found</h1>
                        	</div>
                        	 </div>
                        	</div>
                        <% }%>
		  

             




              

     	</div>

     	<!-- <div class="container demo">
    <h3 class="">Slide &amp; Push animation</h3>

    <div class="direction-reveal direction-reveal--3-grid-flexbox direction-reveal--demo-slide-push">

      <a href="#" class="direction-reveal__card">
        <img src="images/mountain-1.jpg" alt="Image" class="direction-reveal__anim--out img-fluid">

        <div class="direction-reveal__overlay direction-reveal__anim--in">
          <h3 class="direction-reveal__title">Lorem ipsum</h3>
          <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
        </div>
      </a>

      <a href="#" class="direction-reveal__card">
        <img src="images/mountain-2.jpg" alt="Image" class="direction-reveal__anim--out img-fluid">

        <div class="direction-reveal__overlay direction-reveal__anim--in">
          <h3 class="direction-reveal__title">Lorem ipsum</h3>
          <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
        </div>
      </a>

      <a href="#" class="direction-reveal__card">
        <img src="images/mountain-3.jpg" alt="Image" class="direction-reveal__anim--out img-fluid">

        <div class="direction-reveal__overlay direction-reveal__anim--in">
          <h3 class="direction-reveal__title">Lorem ipsum</h3>
          <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
        </div>
      </a>

      <a href="#" class="direction-reveal__card">
        <img src="images/mountain-4.jpg" alt="Image" class="direction-reveal__anim--out img-fluid">

        <div class="direction-reveal__overlay direction-reveal__anim--in">
          <h3 class="direction-reveal__title">Lorem ipsum</h3>
          <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
        </div>
      </a>

      <a href="#" class="direction-reveal__card">
        <img src="images/mountain-5.jpg" alt="Image" class="direction-reveal__anim--out img-fluid">

        <div class="direction-reveal__overlay direction-reveal__anim--in">
          <h3 class="direction-reveal__title">Lorem ipsum</h3>
          <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
        </div>
      </a>

      <a href="#" class="direction-reveal__card">
        <img src="images/mountain-6.jpg" alt="Image" class="direction-reveal__anim--out img-fluid">

        <div class="direction-reveal__overlay direction-reveal__anim--in">
          <h3 class="direction-reveal__title">Lorem ipsum</h3>
          <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
        </div>
      </a>

    </div>

  </div> -->

	 <% for(Project tmp:projects){ %>
        <div class="modal fade "  id="Project<%=tmp.getProject_id() %>" role="dialog" tabindex="-1">




<div class="modal-dialog modal-dialog-centered modal-lg" >
                <div class="modal-content mt-sm-5">
                    <div class="modal-header">
                       <h4 class="modal-title display-4"><%=tmp.getProject_title() %> (<%=tmp.getProject_id() %>)</h4>
                        <button type="button" class="close modal-close " data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        
               <div class=" d-flex justify-content-center  ">
                  <ul  class="nav nav-pills nav-pills-circle d-flex flex-wrap justify-content-center "  role="tablist" >
                 <li class="nav-item">
                      <a class="nav-link rounded-circle mx-auto active "  data-toggle="tab" href="#tabs<%=tmp.getProject_id() %>-1" role="tab" aria-controls="home" aria-selected="true">
                      <div class="nav-link-icon "><i class="fa fa-info" style="font-size: 1.5rem;"></i></div>
                      
                      </a>
                      <span class=" d-none d-lg-block mt-2" style="color: black;">Group Info</span>
                </li>
                <li class="nav-item ">
                      <a class="nav-link rounded-circle mx-auto  "  data-toggle="tab" href="#tabs<%=tmp.getProject_id() %>-2" role="tab" aria-controls="home" aria-selected="true">
                      <div class="nav-link-icon "><i class="fa  fa-cogs" style="font-size: 1.5rem;"></i></div>
                      
                      </a>
                      <span class=" d-none d-lg-block mt-2" style="color: black;">Description</span>
                </li>
                 <li class="nav-item">
                      <a class="nav-link rounded-circle mx-auto  " data-toggle="tab" href="#tabs<%=tmp.getProject_id() %>-3" role="tab" aria-controls="home" aria-selected="true">
                      <div class="nav-link-icon "><i class="fa fa-comments" style="font-size: 1.5rem;"></i></div>
                      
                      </a>
                      <span class=" d-none d-lg-block mt-2" style="color: black;">Review1</span>
                      
                </li>
                 <li class="nav-item">
                      <a class="nav-link rounded-circle mx-auto  "  data-toggle="tab" href="#tabs<%=tmp.getProject_id() %>-4" role="tab" aria-controls="home" aria-selected="true">
                      <div class="nav-link-icon "><i class="fa  fa fa-comments" style="font-size: 1.5rem;"></i></div>
                      
                      </a>
                      <span class=" d-none d-lg-block mt-2" style="color: black;">Review2</span>
                </li>
                 <li class="nav-item">
                      <a class="nav-link rounded-circle mx-auto  "  data-toggle="tab" href="#tabs<%=tmp.getProject_id() %>-5" role="tab" aria-controls="home" aria-selected="true">
                      <div class="nav-link-icon "><i class="fa fa-comments" style="font-size: 1.5rem;"></i></div>
                      
                      </a>
                      <span class=" d-none d-lg-block mt-2" style="color: black;">Review3</span>
                </li>

  
            </ul>
            </div>

                  
                  <div class="card shadow-sm  mt-3" style="overflow-y:auto;height:40vh;">
                  <div class="card-body">
               <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade animated zoomIn show active" id="tabs<%=tmp.getProject_id() %>-1" role="tabpanel" aria-labelledby="tabs-cretronix-1-tab">
            <ul class="list-unstyled m-0">
                	<% 
													Jdbc studentForProject=new Jdbc();
													List<Student>students=studentForProject.studentProject(tmp.getProject_id());
												%>
                	<%for(Student s:students){%>
                     <li >
                  <div class="d-flex  ">
                    <div>
                      <div class="badge badge-pill bg-gradient-success mr-3">
                      </div>
                    </div>
                    <div>
                     <p class=" text-default font-weight-normal "><%=s.getStudent_name()%></p>
                    </div>
                  </div>
                </li>
                <%} %>
                  
					</ul>
            
            </div>
            <div class="tab-pane fade animated zoomIn" id="tabs<%=tmp.getProject_id() %>-2" role="tabpanel" aria-labelledby="tabs-cretronix-2-tab">
                <p class="text-center text-default font-weight-normal">
                     <h6 class="text-primary text"><i><%=tmp.getProject_domain() %></i></h6>		                                
		                                <p class="description mt-3"><%=tmp.getProject_description()%></p>
		                                  <%
									      			Jdbc technologies=new Jdbc();
									      			List<Technology>techs=technologies.getProjectTechInfo(tmp.getProject_id());
									      	%>
			                                
		                                 	<% for(Technology t : techs){ %>
			                             	<%=t.getTechnology_name()%>
			                             	  <%}%>
			                             	  
		                                <br>
		                                
		                              

            </div>
            
            <%
									            	Jdbc progress=new Jdbc();
									            	Review1 r1=new Review1();
									            	Review2 r2=new Review2();
									            	Review3 r3=new Review3();
									            	
									            	r1=progress.getReview1Info(tmp.getProject_id());
									            	r2=progress.getReview2Info(tmp.getProject_id());
									            	r3=progress.getReview3Info(tmp.getProject_id());
									            	
									            	float percent=0;
									            	if(r1!=null){
									            	if(r1.getReview1_marks()!=0){
									            		percent+=1;
									            	}
									            	}
									            	if(r2!=null){
									            	if(r2.getReview2_marks()!=0){
									            		percent+=1;
									            	}
									            	}
									            	if(r3!=null){
									            	if(r3.getReview3_marks()!=0){
									            		percent+=1;
									            	}
									            	}
									            	System.out.println("percentage is "+percent);
									            	percent=percent/3;
									            	percent=percent*100;
									            %>
            <div class="tab-pane fade animated zoomIn" id="tabs<%=tmp.getProject_id() %>-3" role="tabpanel" aria-labelledby="tabs-cretronix-3-tab">
                <p class="text-center text-default font-weight-normal">
   
              <ul class="list-group">
                        
                         <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <input type="text" class="form-control" name="marks" placeholder="Enter marks out of 20"> 
					            </div>
					            </div>
					            <br>
					             <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <textarea class="form-control" rows="3" name="comments" placeholder="Write suggestions and comments here ..."></textarea>
                                 </div>
                                 </div>
                                 <div class="text-center">
					            	<input type="submit" value="Submit" class="btn btn-primary my-4">
					            </div>
                    
                    </ul>
</p>
            </div>
            <div class="tab-pane fade animated zoomIn" id="tabs<%=tmp.getProject_id() %>-4" role="tabpanel" aria-labelledby="tabs-cretronix-3-tab">
                <p class="text-center text-default font-weight-normal">
   
    
   <ul class="list-group">
    <form role="form" action="TeacherController" method="post">
                        <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <input type="text" class="form-control" name="marks" placeholder="Enter marks out of 20"> 
					            </div>
					            </div>
					            <br>
					             <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <textarea class="form-control" rows="3" name="comments" placeholder="Write suggestions and comments here ..."></textarea>
                                 </div>
                                 </div>
                                 <div class="text-center">
					            	<input type="submit" value="Submit" class="btn btn-primary my-4">
					            </div>
                    </form>
                    </ul>


</p>
            </div>
            <div class="tab-pane fade animated zoomIn" id="tabs<%=tmp.getProject_id() %>-5" role="tabpanel" aria-labelledby="tabs-cretronix-3-tab">
                                <div class="d-flex flex-column ">
                                 <p class="text-center text-default font-weight-normal">
   
    
   <ul class="list-group">
                                <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <input type="text" class="form-control" name="marks" placeholder="Enter marks out of 20"> 
					            </div>
					            </div>
					            <br>
					             <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <textarea class="form-control" rows="3" name="comments" placeholder="Write suggestions and comments here ..."></textarea>
                                 </div>
                                 </div>
                                  <div class="text-center">
					            	<input type="submit" value="Submit" class="btn btn-primary my-4">
					            </div>
                    </ul>
			                        	   </div>
			                        	  
			     </p>    
			  
        </div>
            </div>
        </div>
    </div>
</div>
                    </div>


                    <div class="modal-footer">
                      
                    </div>
                </div>
            </div>
              <% } %>
           
        </div>
        
        
        <div class="container-fluid mt--7 tab-pane fade" id="Projects_Report" role="tabpanel" aria-labelledby="Projects_Report-tab">
        
         <div class="card card-profile shadow" style="width=25%">
         <center>
       <table border="1" width="25%" cellpadding="5">
            <thead> 
               <th colspan="3">Uploaded Files</th>        
            </thead>
                <tbody>
                    <tr>
                      <td><center><b>Id</b></center></td>
                      <td><center><b>File Name</b></center></td>
                      <td><center><b>File</b></center></td>
                    </tr>
                    
                    <%
                        try
                        {
                                Jdbc dbconn=new Jdbc();
                                Connection myconnection= dbconn.Connection();
                                String sqlString = "select id,title,file from files,projects where files.project_id = projects.project_id and projects.teacher_id=?";
                                PreparedStatement preparedStatement=myconnection.prepareStatement(sqlString);
                                preparedStatement.setString(1,teacher.getTeacher_id());
                                ResultSet rs=preparedStatement.executeQuery();
                                
                                if(!rs.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="3"><center><%out.print("No Files!"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
                                while(rs.next())
                                {   
                            %>
                                    <tr>
                                    	<td><center><%out.print(rs.getString("id")); %></center></td>
                                        <td><center><%out.print(rs.getString("title")); %></center></td>
                                        <td><center><a href="view_file.jsp?id=<%out.print(rs.getString("id"));%>">View</a></center></td>
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
        </table>
        </center>
                            
                            <%
                                rs.close();
                                preparedStatement.close();
                                myconnection.close();
                        }catch(Exception e)
                        {
                        	e.printStackTrace(); 
                        }    
                        
                    %>
	 </div>

</div>
 <div class="container-fluid mt--7 tab-pane fade" id="Edit_Profile" role="tabpanel" aria-labelledby="Edit_Profile-tab">
  <div class="card card-profile shadow">
							
							<form id="regForm" action="UpdateController" method="post" class="text-center">
					        		<h1>Update Profile</h1>
					        		 <div class="col-md-6">
                                      <div class="form-group">
                                       <input type="hidden" class="form-control"  name="user_type" value="teacher">
                                         </div>
					          </div>
					           <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					          <input class="form-control" oninput="this.className = ''" name="teacher_id" value=<%=teacher.getTeacher_id()%> readonly style="text-align:center" >
					          </div>
					          </div>
					             <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"></span>
                      </div>
                      <input class="form-control" placeholder="Teacher Name"  oninput="this.form-control = ''" name="teacher_name" value=<%=teacher.getTeacher_name()%> style="text-align:center" >
                    </div>
                  </div>
                  
                    <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"></span>
                      </div>
                      <input class="form-control"  placeholder="Email"  oninput="this.form-control = ''" name="teacher_email" value=<%=teacher.getTeacher_email()%> style="text-align:center" >
                    </div>
                  </div>
                  
                   <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"></span>
                      </div>
                      <input class="form-control" placeholder="Student Department"  oninput="this.form-control = ''" name="teacher_dept" value=<%=teacher.getTeacher_dept()%> style="text-align:center" >
                    </div>
                  </div>
                  
                   <div class="form-group mb-3">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"></span>
                      </div>
                      <input class="form-control" placeholder="Reset password"  oninput="this.form-control = ''" name="teacher_password" value=<%=teacher.getTeacher_password()%> style="text-align:center" >
                    </div>
                  </div>
			     <input type="submit" class="btn btn-default" value="Update">         
				 </form>	         
					         					           
					        		
					       
					     
                  




 
 
 </div>
 
</div>
<div class="container-fluid mt--7 tab-pane fade" id="Previous_Projects" role="tabpanel" aria-labelledby="Previous_Projects-tab">
  <form action="TeacherController" method="post">
					<input type="hidden" name="user_id" value=<%=teacher.getTeacher_id()%>>
						<div class="container">
							<div class="col-sm-5">
								<strong>Select by Year</strong><br>
								<select class="form-control" name="year_selected" onchange="this.form.submit();">
									<option value="0">select year</option>
									<%for(int i=2018;i>=2010;i--){%>
										<option value=<%=i%>><%=i%>												
									<%} %>					
								</select>
							</div>
						</div>
				</form>
  </div>

<div class="container-fluid mt--7 tab-pane fade" id="Projects_Filters" role="tabpanel" aria-labelledby="Projects_Filters-tab">

 	<form action="TeacherController" method="post">
		<input type="hidden" name="user_id" value=<%=teacher.getTeacher_id()%>>
		<div class="container">
			<div class="col-sm-5">
				<strong>Select by Technology</strong><br>
				<select class="form-control" name="tech_selected" onchange="this.form.submit();">
					<option value="0">select technology</option>
					<%for(Technology t:techs1){%>
						<option value=<%=t.getTechnology_id()%>><%=t.getTechnology_name()%>												
					<%} %>					
				</select>
			</div>
		</div>
		</form>    


</div>
  </div>

  

<!-- <div class="container-fluid mt--7 tab-pane fade " id="Evaluate" role="tabpanel" aria-labelledby="Evaluate-tab">

         
					<div class="card bg-secondary shadow border-0">
					    <div class="card-header bg-white pb-5">
					        <div class="text-muted text-center mb-3"><small>Enter Project Details</small></div>
					        <div class="btn-wrapper text-center">
					        </div>
					    </div>
					    <div class="card-body px-lg-5 py-lg-5">
	
					        <form role="form" action="TeacherController" method="post">
								<input type="hidden" name="user_id" value=<%=teacher.getTeacher_id()%>>					            
					            <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					                    <select name="project_selected" class="form-control">
					            	        <option value="0">select project</option>
					                    	<%for(Project tmp:projects){ %>
					                    		<option value=<%=tmp.getProject_id() %>><%=tmp.getProject_title() %>
					                    	<%} %>
					                    </select>
					                </div>
					            </div>
					            
					            <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					                    <select name="review_selected" class="form-control">
					                    	<option value="0" class="dropdown-item">select review</option>
					                    	<option value="1" class="dropdown-item">review 1</option>
					                    	<option value="2" class="dropdown-item">review 2</option>
					                    	<option value="3" class="dropdown-item">review 3</option>
					                    </select>
					                </div>
					            </div>
					            
					             <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <input type="text" class="form-control" name="marks" placeholder="enter marks out of 20"> 
					            </div>
					            </div>
					            <br>
					             <div class="form-group mb-3">
					                <div class="input-group input-group-alternative">
					            <textarea class="form-control" rows="3" name="comments" placeholder="Write suggestions and comments here ..."></textarea>
                                 </div>
                                 </div>
					            <div class="text-center">
					            	<input type="submit" value="Submit" class="btn btn-primary my-4">
					            </div>
					            
					        </form>
					    </div>
					</div>
					
					
					
				</div>-->




      
      
        <script src="Bootstrap/vendor/jquery/jquery.min.js"></script>
        <script src="Bootstrap/vendor/popper/popper.min.js"></script>
        <script src="Bootstrap/vendor/bootstrap/bootstrap.min.js"></script>
        <script src="Bootstrap/vendor/headroom/headroom.min.js"></script>
        <!-- Optional JS -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		
        <script src="Bootstrap/vendor/onscreen/onscreen.min.js"></script>
        <script src="Bootstrap/vendor/nouislider/js/nouislider.min.js"></script>
        <script src="Bootstrap/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="assets/vendor/headroom/headroom.min.js"></script>
        <!-- Argon JS -->
        <script src="Bootstrap/js/argon.js?v=1.0.1"></script>  
         <script src="Bootstrap/js/bundle.js"></script>
      </body>
      </html>  
      
      
      
      
      
      
      