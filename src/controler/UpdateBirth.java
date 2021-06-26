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
 * Servlet implementation class UpdateBirth
 */
@WebServlet("/UpdateBirth")
public class UpdateBirth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBirth() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		
		int birth_id = Integer.parseInt(request.getParameter("birth_id"));
		String patent = request.getParameter("patent_id");
		int patent_id = Integer.parseInt(patent);
		String name_child = request.getParameter("chld_name");
		String name_gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String weightr = request.getParameter("weght");
		String birth_place = request.getParameter("place");
		String father_name = request.getParameter("father");
		String phone_no = request.getParameter("phone");
		
		BirthBean bb = new BirthBean();
		
		bb.setPatent_id(patent_id);
		bb.setName_child(name_child);
		bb.setGender(name_gender);
		bb.setDob(dob);
		bb.setWeight(weightr);
		bb.setBirth_place(birth_place);
		bb.setFather_name(father_name);
		bb.setPhone_no(phone_no);
		bb.setBirth_id(birth_id);
		
		int result = BirthDao.updateBirth(bb);
		
		if(result>0) {
			response.sendRedirect("viewbirth.jsp");
			
		}else {
			out.println("sorry unable to update try again");
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
