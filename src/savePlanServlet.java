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
import java.util.Date;

public class savePlanServlet extends HttpServlet {

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
		

		try {
			EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("Eclipselink_JPA");
			EntityManager entitymanager = emfactory.createEntityManager();
			entitymanager.getTransaction().begin();

			District d1=new District(11,1,new int[] {271570130, 271570020,271570110,271570130,271570165,271570085});
			District d2=new District(12,2,new int[] {271430075,271430070,271430035,271430115});
			District d3=new District(13,3,null);
			District d4=new District(14,4,new int[] {271630215,271630165,271630160,271630145});
			District d5=new District(15,5,null);
			District d6=new District(16,6,new int[] {270970030,270970025,270970140,270970105,270970155,270970100,270970170,270970005,
					270970215,270970015,270970135,270970245,270970020,270970230});
			District d7=new District(17,7,null);
			District d8=new District(18,8,null);
			State s=new State(11,"Minnesota",new int[]{11,12,13,14,15,16,17,18},new District[]{d1,d2,d3,d4,d5,d6,d7,d8});
			Plan p = new Plan(1,new Date().toString(),"Minnesota",11,s,"yuege.chen@yahoo.com");
			
			
			
			
			entitymanager.persist(p);
			entitymanager.getTransaction().commit();
//			
//			request.getSession().setAttribute("email", user.getEmail());
//			request.getSession().setAttribute("uname", user.getUname());
//			request.getSession().setAttribute("address", user.getAddress());
//			request.getSession().setAttribute("phone", user.getPhone());
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
