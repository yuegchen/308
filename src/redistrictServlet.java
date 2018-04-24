import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cse308.entity.*;
import com.google.gson.Gson;

public class redistrictServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			District d1=new District(11,1,new int[] {271570130, 271570020,271570110,271570130,271570165,271570085});
			District d2=new District(12,2,new int[] {271430075,271430070,271430035,271430115});
			District d3=new District(13,3,null);
			District d4=new District(14,4,new int[] {271630215,271630165,271630160,271630145});
			District d5=new District(15,5,null);
			District d6=new District(16,6,new int[] {270970030,270970025,270970140,270970105,270970155,270970100,270970170,270970005,
					270970215,270970015,270970135,270970245,270970020,270970230});
			District d7=new District(17,7,null);
			District d8=new District(18,8,null);
			State s=new State(11,"Minnesota",new District[]{d1,d2,d3,d4,d5,d6,d7,d8});
			Plan plan = new Plan(1,LocalDateTime.now().toString(),"Minnesota",s,"yuege.chen@yahoo.com");
			
			sendJsonObject(plan,  response);
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void sendJsonObject(Plan plan, HttpServletResponse response) throws IOException{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("plan", plan);
		
		Gson gson = new Gson();
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(gson.toJson(map));
	}
}
