import cse308.entity.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class registerServlet extends HttpServlet {

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
		String email = request.getParameter("email");
		String uname = request.getParameter("name");
		String passwd = request.getParameter("psw");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");

		try {
			EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("Eclipselink_JPA");
			EntityManager entitymanager = emfactory.createEntityManager();
			entitymanager.getTransaction().begin();

			User user = new User();
			user.setUname(uname);
			user.setEmail(email);
			user.setPwd(passwd);
			user.setPhone(phone);
			user.setAddress(address);
			
			entitymanager.persist(user);
			entitymanager.getTransaction().commit();
			
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
