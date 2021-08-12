package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.StaffBean;
import dao.StaffDao;

/**
 * Servlet implementation class StaffController
 */
@WebServlet("/StaffController")
public class StaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String fname= request.getParameter("fname" );
		String middle_name = request.getParameter("middle");
		String last_name = request.getParameter("lname");
		String gender =request.getParameter("gender");
		String dob= request.getParameter("dob");
		String address = request.getParameter("address");
		String email= request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		String role = request.getParameter("role");
		

		StaffBean bean = new StaffBean();
		
		bean.setFname(fname);
		bean.setMiddle_name(middle_name);
		bean.setLast_name(last_name);
		bean.setGender(gender);
		bean.setDob(dob);
		bean.setAddress(address);
		bean.setEmail(email);
		bean.setPhone(phone);
		bean.setUsername(username);
		bean.setPassword(password);
		bean.setRole(role);
		
		int  result = StaffDao.saveStaff(bean);
		if(result>0){
			response.sendRedirect("viewstaff.jsp");
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
