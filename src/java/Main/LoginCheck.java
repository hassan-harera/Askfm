package Main;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginCheck", urlPatterns = {"/LoginCheck"})
public class LoginCheck extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = (String) request.getAttribute("username");
        String upass = (String) request.getAttribute("password");

        User user = new User();
        if (user.login(uname, upass)) {
            response.sendRedirect("wall.jsp");
        } else {
            response.sendRedirect("wall.jsp");
        }
    }
}
