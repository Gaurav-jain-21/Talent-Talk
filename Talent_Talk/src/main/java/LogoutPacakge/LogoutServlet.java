package LogoutPacakge;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LogoutServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get current session (if exists)
    	PrintWriter out = response.getWriter();
    	out.println("you are logged out");
        HttpSession session = request.getSession(false);

        // Invalidate session to logout user
        if (session != null) {
            session.invalidate();
        }

        // Redirect to login page
        response.sendRedirect("StartPage.jsp");
    }
}
