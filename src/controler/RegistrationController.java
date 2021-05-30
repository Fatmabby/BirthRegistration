package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bean.RegistrationBean;
import dao.PatentDao;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String hname = request.getParameter("hname");
		String address = request.getParameter("address");
		String dob = request.getParameter("dob");
		String contact = request.getParameter("contact");
		String reg_date = request.getParameter("reg_date");
		
	RegistrationBean bean = new RegistrationBean();
		bean.setFname(fname);
		bean.setLname(lname);
		bean.setHname(hname);
		bean.setAddress(address);
		bean.setDob(dob);
		bean.setContact(contact);
		bean.setReg_date(reg_date);
	
		int  result = RegistrationDao.saveRegistration(bean);
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
