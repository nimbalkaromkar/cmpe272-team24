package bean;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DisplayMedicine
 */
@WebServlet("/DisplayMedicine")
public class DisplayMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayMedicine() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("diseaseName")+":"+request.getParameter("alternateMedicineType"));
		
		String diseaseName = request.getParameter("diseaseName");
		String alternateMedicineType = request.getParameter("alternateMedicineType");
		
		MongoHandler m = new MongoHandler();
		
		Disease d = m.getDiseaseFromMongo(diseaseName, alternateMedicineType);
		System.out.println("d value "+d);
		HttpSession session = request.getSession(true);
		 session.setAttribute("disease",d );
		
		
		 RequestDispatcher dispatcher =    request.getRequestDispatcher("MedicineNew.jsp");
		dispatcher.forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
