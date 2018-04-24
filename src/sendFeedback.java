import java.io.IOException;
import java.util.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.*;
import cse308.entity.Feedback;

public class sendFeedback extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String 	title 	= 	request.getParameter("title");
		String 	detail 	= 	request.getParameter("detail");
		String 	email 	= 	(String)request.getSession().getAttribute("email");
		try {
			EntityManagerFactory	emfactory 		= Persistence.createEntityManagerFactory("Eclipselink_JPA");
			EntityManager 			entitymanager 	= emfactory.createEntityManager();
			Feedback 				fb 				= new Feedback();
			fb.setDetail(detail);
			fb.setEmail(email);
			fb.setTitle(title);
			entitymanager.getTransaction().begin();
			entitymanager.persist(fb);
			entitymanager.getTransaction().commit();
			System.out.println("meee");
			write(response, "success");
			dispatch(request, response, "/index.jsp");
			entitymanager.close();
			emfactory.close();
		}
		catch (Exception e) {
			Map<String, Object> toReturn = new HashMap<>();
			toReturn.put("status", "failed");
			write(response, "failed");
		}
	}
	private void write(HttpServletResponse response, String status) throws IOException {
		System.out.println("hiihihihihi");
		Map<String, Object> toReturn 	= 	new HashMap<>();
		if (status.compareTo("success") == 0) {
			toReturn.put("status", "success");
		} else {
			toReturn.put("status", "failed");
		}
		response.getWriter().write(new Gson().toJson(toReturn));
	}
	private void dispatch(HttpServletRequest request, HttpServletResponse response, String dest) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
	
}
