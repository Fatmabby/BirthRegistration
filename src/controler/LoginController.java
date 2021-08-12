package controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.LoginBean;
import bean.StaffBean;
import dao.LoginDao;
import dao.StaffDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
			String username = request.getParameter("user");
			String password = request.getParameter("pass");
			
			try {
				StaffBean lg = StaffDao.userlogin(username, password);
				if (lg !=null) {
					
					Cookie user = new Cookie("user", username);
			        user.setMaxAge(60);
			        response.addCookie(user);
			        //Set Session
			        
			        HttpSession session=request.getSession();
			        session.setAttribute("user",lg.getUsername());
			        session.setAttribute("role",lg.getRole());
			        
			        String role=(String)session.getAttribute("role");
			        
			        if(role.equals("users")) {
			        	 response.sendRedirect("home.jsp");	
			        	 
			        }else if(role.equals("admin")) {
			        	response.sendRedirect("homeAdmin.jsp");
			        }
			                  
				}else {
					request.setAttribute("error", "error");
		            request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				
			}catch(Exception e) {e.printStackTrace();}
			
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
