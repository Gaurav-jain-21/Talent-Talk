package Admin_Panel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("AdminEmail");
        String pwd = request.getParameter("Adminpwd");

        // Hardcoded credentials check
        if ("gjain7764@gmail.com".equals(email) && "123456".equals(pwd)) {
            HttpSession session = request.getSession();
            session.setAttribute("adminEmail", email);
            System.out.println("welcome to the world of admin");
            
            // Redirect to your admin dashboard/home page
            response.sendRedirect("adminDashboard.jsp"); 
        } else {
            // Redirect back to login page with an error parameter
            response.sendRedirect("adminLogin.jsp?error=1");
        }
    }
}