package Company_Panel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/CompanyLogin")
public class CompanyLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("email");
        String pwd = request.getParameter("password");

        if ("gjain7764@gmail.com".equals(uname) && "12345".equals(pwd)) {

            HttpSession session = request.getSession();
            session.setAttribute("name", uname);

            response.sendRedirect("companyDashboard.jsp");

        } else {
            response.sendRedirect("companyLogin.jsp");
        }
    }
}
