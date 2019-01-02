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
import entities.Coordinator;
import entities.Notice;
import jdbc_student.Jdbc;


@WebServlet("/CoordinatorController")

public class CoordinatorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoordinatorController() {
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
		String coordinator_id=request.getParameter("user_id");
		System.out.println(coordinator_id);
		HttpSession session=request.getSession();
		Coordinator coordinator=new Coordinator();
		Jdbc newcoordinator=new Jdbc();
		coordinator=newcoordinator.coordinatorInformation(coordinator_id);
		session.setAttribute("coordinator_info",coordinator);
		if(request.getParameter("notice_description")!=null) {
			addnotice(request, response);
		}
		
		if(request.getParameter("edit")!=null) {
			System.out.println("hi inside coordinator controller");
			response.sendRedirect("EditSigninCoordinator.jsp");
		}
		else
		{
		response.sendRedirect("WelcomeCoordinator.jsp");
		}
	}	
	private void addnotice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Notice notice=new Notice();
		notice.setNotice_description(request.getParameter("notice_description"));
		notice.setCoordinator_id(request.getParameter("user_id"));
		
		
		Jdbc new_notice=new Jdbc();

		new_notice.insertNotice(notice);
		//response.sendRedirect("WelcomeCoordinator.jsp");
		}
	}
	
	
	
	
	

	
	
	
	
