package vn.edu.hcmuaf;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/loginServelet")
public class task3 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (username != "" && password != "") {
            resp.getWriter().println("<h1>Username : </h1>");
            resp.getWriter().println(username);
            resp.getWriter().println("<h1>Password : </h1>");
            resp.getWriter().println(password);
        }else{
            resp.getWriter().println("<h1 style = 'color : red;'> Error - Not enough information </h1>");
        }
//        if ("user@gmail.com".equals(username) && "pass123".equals(password)) {
//            resp.getWriter().println("<h1> Log in successful </h1>");
//        } else {
//            resp.getWriter().println("<h1> Log in fail </h1>");
//        }
    }
}
