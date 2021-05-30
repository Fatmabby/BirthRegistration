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

		String reg_date = request.getParameter("RegstrationDate");
		String fullname = request.getParameter("fullname");
		String husbandname = request.getParameter("husbandname");
		String address = request.getParameter("address");
		String dob = request.getParameter("dob");
		String gravida = request.getParameter("gravida");
		String operation = request.getParameter("operation");
		String blood_group = request.getParameter("Bloodgroup");
		String phone = request.getParameter("Phone");
		
		PatentBean bean = new PatentBean();
		bean.setReg_date(reg_date);
		bean.setFullname(fullname);
		bean.setHusbandname(husbandname);
		bean.setAddress(address);
		bean.setDob(dob);
		bean.setGravida(gravida);
		bean.setOperation(operation);
		bean.setBlood_group(blood_group);
		bean.setPhone(phone);
		
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
