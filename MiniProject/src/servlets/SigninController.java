package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Coordinator;
import entities.Project;
import entities.Student;
import entities.Teacher;
import jdbc_student.Jdbc;

@WebServlet("/SigninController")
public class SigninController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SigninController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usertype=request.getParameter("usertype");
		
		switch(usertype) {
			case "student":
				addstudent(request,response);
				break;
			case "teacher":
				addteacher(request,response);
				break;
			case "coordinator":
				addcoordinator(request,response);
				break;
			case "project":
				addproject(request,response);
				break;
			case "projectcheck":
				checkproject(request,response);
				break;
		}		
	}
	
	private void checkproject(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id=request.getParameter("project_id");
		Jdbc new_project=new Jdbc();
		HttpSession session=request.getSession();
		session.setAttribute("project_id",id);		
		if(new_project.checkExistingProject(id)) {
			Project project=new_project.getProjectInfo(id);
			session.setAttribute("teacher_id",project.getTeacher_id());
			System.out.println("Heloo it's true");			
			response.sendRedirect("SigninStudents.jsp");
		}
		else {
			System.out.println("Heloo it's false");
			response.sendRedirect("SigninProject.jsp");
		}
			
	}

	private void addproject(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException  {
		Jdbc new_project=new Jdbc();
		Project project=new Project();
		
		project.setProject_id(request.getParameter("project_id"));
		project.setProject_title(request.getParameter("project_title"));
		project.setProject_domain(request.getParameter("project_domain"));
		project.setProject_description(request.getParameter("project_description"));
		project.setTeacher_id(request.getParameter("teacher_id"));
		project.setProject_link(request.getParameter("project_link"));
		new_project.insertProject(project);
		
		String tech_selected[]=request.getParameterValues("tech");
		if(tech_selected!=null && tech_selected.length!=0) {
			new_project.insertTechnology(tech_selected,project.getProject_id());
		}
		
		HttpSession session=request.getSession();
		session.setAttribute("teacher_id",project.getTeacher_id());
		response.sendRedirect("SigninStudents.jsp");
	}

	private void addcoordinator(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Coordinator coordinator=new Coordinator();
		
		coordinator.setCoordinator_id(request.getParameter("coordinator_id"));
		coordinator.setCoordinator_name(request.getParameter("coordinator_name"));
		coordinator.setCoordinator_email(request.getParameter("coordinator_email"));
		coordinator.setCoordinator_dept(request.getParameter("coordinator_dept"));
		coordinator.setCoordinator_password(request.getParameter("coordinator_password"));
		
		Jdbc new_user=new Jdbc();
		if(new_user.checkExistingCoordinator(coordinator.getCoordinator_id(),coordinator.getCoordinator_email())) {
			response.sendRedirect("Login.jsp");
		}
		else {
			new_user.insertCoordinator(coordinator);
			HttpSession session=request.getSession();
			Jdbc newcoordinator=new Jdbc();
			coordinator=newcoordinator.coordinatorInformation(coordinator.getCoordinator_id());
			session.setAttribute("coordinator_info",coordinator);
			response.sendRedirect("WelcomeCoordinator.jsp");
		}
	}

	private void addteacher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Teacher teacher=new Teacher();
		
		teacher.setTeacher_id(request.getParameter("teacher_id"));
		teacher.setTeacher_name(request.getParameter("teacher_name"));
		teacher.setTeacher_email(request.getParameter("teacher_email"));
		teacher.setTeacher_dept(request.getParameter("teacher_dept"));
		teacher.setTeacher_password(request.getParameter("teacher_password"));
		
		Jdbc new_user=new Jdbc();
		if(new_user.checkExistingTeacher(teacher.getTeacher_id(),teacher.getTeacher_email())) {
			response.sendRedirect("Login.jsp");
		}
		else {
			new_user.insertTeacher(teacher);
			HttpSession session=request.getSession();
			Jdbc newteacher=new Jdbc();
			teacher=newteacher.teacherInformation(teacher.getTeacher_id());
			session.setAttribute("teacher_info",teacher);
			response.sendRedirect("WelcomeTeacher.jsp");
		}
	}

	private void addstudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Student student=new Student();
		student.setStudent_id(request.getParameter("student_id"));
		student.setStudent_name(request.getParameter("student_name"));
		student.setStudent_email(request.getParameter("student_email"));
		student.setStudent_dept(request.getParameter("student_dept"));
		student.setStudent_batch(request.getParameter("student_batch")); 
		student.setStudent_password(request.getParameter("student_password"));
		student.setProject_id(request.getParameter("project_id"));
		
		Jdbc new_student=new Jdbc();
		if(new_student.checkExistingStudent(student.getStudent_id(),student.getStudent_email())) {
			response.sendRedirect("Login.jsp");
		}
		else {
			new_student.insertStudent(student);
			HttpSession session=request.getSession();
			Jdbc newstudent=new Jdbc();
			student=newstudent.studentInformation(student.getStudent_id());
			session.setAttribute("student_info",student);
			response.sendRedirect("WelcomeStudent.jsp");
		}
		
		
	}

}
