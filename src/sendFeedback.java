import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cse308.entity.Feedback;

public class sendFeedback extends HttpServlet{
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
		String 	title 	= 	request.getParameter("title");
		String 	detail 	= 	request.getParameter("detail");
		String 	email 	= 	(String)request.getSession().getAttribute("email");
		System.out.println("hiiiii");
		try {
			EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("Eclipselink_JPA");
			EntityManager entitymanager = emfactory.createEntityManager();
			entitymanager.getTransaction().begin();

			Feedback fb = new Feedback();
			fb.setDetail(detail);
			fb.setEmail(email);
			fb.setTitle(title);
			
			entitymanager.persist(fb);
			entitymanager.getTransaction().commit();
			
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);
			
			
			entitymanager.close();
			emfactory.close();

		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
