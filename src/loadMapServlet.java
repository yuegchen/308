import cse308.entity.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
public class loadMapServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request);
		try {
//			EntityManagerFactory 	emfactory 		= 	Persistence.createEntityManagerFactory("Eclipselink_JPA");
//			EntityManager 			entitymanager 	= 	emfactory.createEntityManager();
//			User 					user 			= 	entitymanager.find(User.class, login);
//			if (user == null || !user.getPwd().equals(passwd)) {
//				RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/loginFail.jsp");
//				dispatcher.forward(request, response);
//				write(response, "failed");
//				entitymanager.close();
//				emfactory.close();
//				return;
//			}
//			request.getSession().setAttribute("email", user.getEmail());
//			request.getSession().setAttribute("uname", user.getUname());
//			request.getSession().setAttribute("address", user.getAddress());
//			request.getSession().setAttribute("phone", user.getPhone());
//			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/UserCenter.jsp");
//			dispatcher.forward(request, response);
//			write(response, "success");
//			entitymanager.close();
//			emfactory.close();
//			return;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	private void write(HttpServletResponse response, String status) throws IOException {
		Map<String, Object> toReturn 	= 	new HashMap<>();
		if (status.compareTo("success") == 0) {
			toReturn.put("status", "success");
		} else {
			toReturn.put("status", "failed");
		}
		response.getWriter().write(new Gson().toJson(toReturn));
	}
}
