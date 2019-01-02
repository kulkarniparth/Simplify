package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Student;
import entities.Teacher;
import jdbc_student.Jdbc;
import entities.Coordinator;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		String user_id=request.getParameter("user_id");
		String user_password=request.getParameter("user_password");
		
		Jdbc login=new Jdbc();
		if(login.checkStudent(user_id,user_password)) {
				RequestDispatcher rd=request.getRequestDispatcher("StudentController");
				rd.forward(request, response);
		}
		else if(login.checkTeacher(user_id,user_password)) {
			RequestDispatcher rd=request.getRequestDispatcher("TeacherController");
			rd.forward(request, response);
		}
		else if(login.checkCoordinator(user_id,user_password)) {
			RequestDispatcher rd=request.getRequestDispatcher("CoordinatorController");
			rd.forward(request, response);
			
			//HttpSession session=request.getSession();
			//session.setAttribute("name",user_id);
			//response.sendRedirect("WelcomeCoordinator.jsp");
		}
		else {
			response.sendRedirect("Error.jsp");
		}
	}
}
