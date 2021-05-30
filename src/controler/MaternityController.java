package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MaternityBean;
import dao.MaternityDao;


/**
 * Servlet implementation class MaternityController
 */
@WebServlet("/MaternityController")
public class MaternityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MaternityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		PrintWriter out = response.getWriter();

		String patent = request.getParameter("Patent");
		int patent_id = Integer.parseInt(patent);
		String pressure = request.getParameter("Pressure");
		String hb = request.getParameter("H.B");
		String fhr = request.getParameter("Fhr");
		String fundal_height= request.getParameter("fh");
		String contraction = request.getParameter("contraction");
		String cervix = request.getParameter("cervix");
		
		MaternityBean bean = new MaternityBean();
		
		bean.setPatent_id(patent_id);
		bean.setPressure(pressure);
		bean.setHb(hb);
		bean.setFhr(fhr);
		bean.setFundal_height(fundal_height);
		bean.setContraction(contraction);
		bean.setCervix(cervix);
		
		int  result =MaternityDao.saveMaternity(bean);
		
		if(result>0){
			response.sendRedirect("viewmateroom.jsp");
		}else {
			out.print("sorry wrong data");
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
