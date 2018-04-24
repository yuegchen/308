import cse308.entity.*;
import java.io.IOException;
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

public class registerServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String 	email 	= request.getParameter("email");
		String 	uname 	= request.getParameter("name");
		String 	passwd 	= request.getParameter("psw");
		String 	phone 	= request.getParameter("phone");
		String 	address = request.getParameter("address");
		
		try {
			EntityManagerFactory	emfactory 		= Persistence.createEntityManagerFactory("Eclipselink_JPA");
			EntityManager 			entitymanager 	= emfactory.createEntityManager();
			User 					user 			= new User();
			user.setUname(uname);
			user.setEmail(email);
			user.setPwd(passwd);
			user.setPhone(phone);
			user.setAddress(address);
			entitymanager.getTransaction().begin();
			entitymanager.persist(user);
			entitymanager.getTransaction().commit();
			setSessionVar(user, request);
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/UserCenter.jsp");
			dispatcher.forward(request, response);
			write(response, "success");
			entitymanager.close();
			emfactory.close();
		}
		catch (Exception e) {
			write(response, "failed");
			e.printStackTrace();
		}
	}
	private void setSessionVar(User user, HttpServletRequest request) {
		request.getSession().setAttribute("email", user.getEmail());
		request.getSession().setAttribute("uname", user.getUname());
		request.getSession().setAttribute("address", user.getAddress());
		request.getSession().setAttribute("phone", user.getPhone());
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
