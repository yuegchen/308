import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
import org.json.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.*;
import cse308.entity.Precinct;

public class loadMapServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println(request.toString());
//		String 	title 	= 	request.getParameter("map");
//		System.out.println(title);
//		
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	        String json = "";
	        if(br != null){
	            json = br.readLine();
	        }
	        JSONArray jsonarray = new JSONArray(json);
	        EntityManagerFactory	emfactory 		= Persistence.createEntityManagerFactory("Eclipselink_JPA");
			EntityManager 			entitymanager 	= emfactory.createEntityManager();
	        for (int i = 0; i < jsonarray.length(); i++) {
	            JSONObject jsonobject = jsonarray.getJSONObject(i);
	            String name = jsonobject.getString("name");
	            int pid = Integer.parseInt(jsonobject.getString("pid"));
	            int cd = Integer.parseInt(jsonobject.getString("cd"));
	            JSONArray geometry= jsonobject.getJSONArray("geometry");
	            if (geometry != null) { 
	            	 JSONArray geo = (JSONArray) jsonobject.get("geometry");    
	            	 double[][] geos = new double[geo.length()][2];
	            	 for (int j = 0; i < geo.length(); j++) {
	            	     JSONArray innerArray = geo.getJSONArray(i);
	            	     for (int k = 0; k < 2; j++) {
	            	         geos[j][k] = innerArray.getDouble(k);
	            	     }
	            	 }
	            	 Precinct toAdd = new Precinct(pid, name, geos, cd);
	            	 entitymanager.getTransaction().begin();
	 				 entitymanager.persist(toAdd);
	 				 entitymanager.getTransaction().commit();
	            }
	            
	            
	            
	        }
	        entitymanager.close();
	        emfactory.close();
	        
	        
		
		
//			System.out.println(request.toString());
//			
//			Feedback 				fb 				= new Feedback();
//			fb.setDetail(detail);
//			fb.setEmail(email);
//			fb.setTitle(title);
//			entitymanager.getTransaction().begin();
//			entitymanager.persist(fb);
//			entitymanager.getTransaction().commit();
//			System.out.println("meee");
//			write(response, "success");
//			dispatch(request, response, "/index.jsp");
//			entitymanager.close();
//			emfactory.close();
		}
		catch (Exception e) {
//			Map<String, Object> toReturn = new HashMap<>();
//			toReturn.put("status", "failed");
//			write(response, "failed");
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
