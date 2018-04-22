import cse308.entity.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class loginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String login = request.getParameter("login");
		// String type=request.getParameter("type");
		String passwd = request.getParameter("userpasswd");
		// String isUser=(String) request.getSession().getAttribute("User");

		try {
			EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("Eclipselink_JPA");
			EntityManager entitymanager = emfactory.createEntityManager();
			User user = entitymanager.find(User.class, login);

			if (user == null || !user.getPwd().equals(passwd)) {
				RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/loginFail.jsp");
				dispatcher.forward(request, response);
				entitymanager.close();
				emfactory.close();
				return;
			}
			request.getSession().setAttribute("email", user.getEmail());
			request.getSession().setAttribute("uname", user.getUname());
			request.getSession().setAttribute("address", user.getAddress());
			request.getSession().setAttribute("phone", user.getPhone());
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/UserCenter.jsp");
			dispatcher.forward(request, response);
			
			entitymanager.close();
			emfactory.close();
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
