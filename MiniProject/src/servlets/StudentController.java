package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Project;
import entities.Student;
import entities.Teacher;
import jdbc_student.Jdbc;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String student_id=request.getParameter("user_id");
		System.out.println(student_id);
		HttpSession session=request.getSession();
		Student student=new Student();
		Jdbc newstudent=new Jdbc();
		student=newstudent.studentInformation(student_id);
		session.setAttribute("student_info",student);
		String year_id=request.getParameter("year_selected");
		if(year_id!=null)
		{
			Jdbc project_year=new Jdbc();
			List<Project>project_year_list=project_year.listArchivesProjects(student_id,year_id);
			session.setAttribute("project_year_list",project_year_list);
		}
		else
			session.setAttribute("project_year_list", null);
		response.sendRedirect("WelcomeStudent.jsp");
	}

}
