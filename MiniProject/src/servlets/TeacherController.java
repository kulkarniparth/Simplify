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
import entities.Teacher;
import jdbc_student.Jdbc;

/**
 * Servlet implementation class TeacherController
 */
@WebServlet("/TeacherController")
public class TeacherController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherController() {
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
		String teacher_id=request.getParameter("user_id");
		System.out.println(teacher_id);
		HttpSession session=request.getSession();
		Teacher teacher=new Teacher();
		Jdbc newteacher=new Jdbc();
		teacher=newteacher.teacherInformation(teacher_id);
		session.setAttribute("teacher_info",teacher);
		String tech_id=request.getParameter("tech_selected");
		String year_id=request.getParameter("year_selected");
		String project_id=request.getParameter("project_selected");
		String review_id=request.getParameter("review_selected");
		String marks=request.getParameter("marks");
		String comments=request.getParameter("comments");
		
		System.out.println("project id selected is "+project_id);
		System.out.println("review id selected is "+review_id);
		
		if(tech_id!=null)
		{
			Jdbc project_tech=new Jdbc();
			List<Project>project_tech_list=project_tech.listProjectsTech(teacher_id,tech_id);
			session.setAttribute("project_tech_list", project_tech_list);
		}
		else
			session.setAttribute("project_tech_list", null);
		
		if(year_id!=null)
		{
			Jdbc project_year=new Jdbc();
			List<Project>project_year_list=project_year.listArchivesProjects(teacher_id,year_id);
			session.setAttribute("project_year_list",project_year_list);
		}
		else
			session.setAttribute("project_year_list", null);
		
		if(project_id!=null && review_id!=null) {
			Jdbc review=new Jdbc();
			if(review_id.equals("1")) {
				review.updateReview1(project_id, Integer.parseInt(marks),comments);
			}
			else if(review_id.equals("2")) {
				review.updateReview2(project_id, Integer.parseInt(marks),comments);
			}
			else if(review_id.equals("3")) {
				review.updateReview3(project_id, Integer.parseInt(marks),comments);
				
			}
		}
		
		response.sendRedirect("WelcomeTeacher.jsp");
	}
}
