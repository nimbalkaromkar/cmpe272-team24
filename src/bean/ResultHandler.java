package bean;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/ResultHandler")
public class ResultHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ResultHandler() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
			
			
		}	
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	//	response.sendRedirect("results.jsp");
		
		
		
		String keyword = request.getParameter("keyword");
		
		 MongoHandler m = new MongoHandler();
	//	Disease d[] = new Disease[10];
		List<Disease> d = m.getDiseaseFromMongo(keyword);
		if(d==null)
			System.out.println("d is null");
		else
			System.out.println("d is not null"+d);
		
		
		int resultCount = d.size();
		
		if(resultCount!=0){
		
		HttpSession session = request.getSession(true);
		 session.setAttribute("disease",d );
		 session.setAttribute("resultCount",resultCount );
		 session.setAttribute("keyword",keyword );
		 System.out.println("Result Count:"+resultCount);
		 //	 session.setAttribute("count",4);
		 RequestDispatcher dispatcher = request.getRequestDispatcher("results.jsp");
			    dispatcher.forward( request, response );   
		}
		else{
			System.out.println("The disease or symptom not found");
			RequestDispatcher dispatcher =    request.getRequestDispatcher("index.jsp");
			 dispatcher.forward( request, response );
		}
	}

}
