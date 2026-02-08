package Company_Panel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class CompanyForgetPwd
 */
@WebServlet("/CompanyForgetPwd")
public class CompanyForgetPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyForgetPwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String femail= request.getParameter("Femail");
		if(femail.equals("gjain7764@gmail.com")) {
			System.out.println("password in changed");
			response.sendRedirect("companyLogin.jsp");
		}
		else {
			out.println("you entered wrong email");
			response.sendRedirect("companyForgetPassword.jsp");
		}
	}

}
