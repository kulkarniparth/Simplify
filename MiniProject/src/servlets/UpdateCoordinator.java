package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Coordinator;
import jdbc_student.Jdbc;

/**
 * Servlet implementation class UpdateCoordinator
 */
@WebServlet("/UpdateCoordinator")
public class UpdateCoordinator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCoordinator() {
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
		Coordinator coordinator=new Coordinator();
		coordinator.setCoordinator_id(request.getParameter("coordinator_id"));
		coordinator.setCoordinator_name(request.getParameter("coordinator_name"));
		coordinator.setCoordinator_email(request.getParameter("coordinator_email"));
		coordinator.setCoordinator_dept(request.getParameter("coordinator_dept"));
		coordinator.setCoordinator_password(request.getParameter("coordinator_password"));
		
		Jdbc updateCoordinator=new Jdbc();
		updateCoordinator.editCoordinator(coordinator);
		response.sendRedirect("WelcomeCoordinator.jsp");
		
	}

}
