package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BirthBean;
import dao.BirthDao;


/**
 * Servlet implementation class BirthController
 */
@WebServlet("/BirthController")
public class BirthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BirthController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String patent = request.getParameter("patent_id");
		int patent_id = Integer.parseInt(patent);
		String name_child = request.getParameter("chld_name");
		String name_gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String weightr = request.getParameter("weght");
		String birth_place = request.getParameter("place");
		String father_name = request.getParameter("father");
		String phone_no = request.getParameter("phone");
		
		BirthBean bean = new BirthBean();
		bean.setPatent_id(patent_id);
		bean.setName_child(name_child);
		bean.setGender(name_gender);
		bean.setDob(dob);
		bean.setWeight(weightr);
		bean.setBirth_place(birth_place);
		bean.setFather_name(father_name);
		bean.setPhone_no(phone_no);
		
		int  result = BirthDao.saveBirth(bean);
		if(result>0){
			response.sendRedirect("viewbirth.jsp");
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