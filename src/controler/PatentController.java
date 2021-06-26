package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bean.PatentBean;
import dao.PatentDao;

/**
 * Servlet implementation class PatentController
 */
@WebServlet("/PatentController")
public class PatentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		String first_name = request.getParameter("fname" );
		String last_name = request.getParameter("lname");
		String address = request.getParameter("address");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String user = request.getParameter("user");
		String password = request.getParameter("pass");
		
		
		PatentBean bean = new PatentBean();
		bean.setFirst_name(first_name);
		bean.setLast_name(last_name);
		bean.setAddress(address);
		bean.setDob(dob);
		bean.setPhone(phone);
		bean.setUser(user);
		bean.setPassword(password);
		
		
		
		int  result = PatentDao.savePatent(bean);
		if(result>0){
			response.sendRedirect("viewpatent.jsp");
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
