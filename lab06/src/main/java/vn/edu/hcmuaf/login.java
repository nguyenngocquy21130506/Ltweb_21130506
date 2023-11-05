package vn.edu.hcmuaf;

import vn.edu.hcmuaf.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username") == null ? "" : req.getParameter("username");
        String password = req.getParameter("password") == null ? "" : req.getParameter("password");

        System.out.println("username : " + username);
        if (!username.contains("@")) {
            req.setAttribute("Emailerror", "Email is error !");
            req.setAttribute("emailClass", "error");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }

        User u = UserService.getInstance().checkLogin(username,password);
        System.out.println(u.getUsername() + u.getPassword());
        if (u != null) {
            HttpSession session = req.getSession();
            session.setAttribute("auth", u);
            resp.sendRedirect("./home.jsp");
//            resp.getWriter().println("<h1 style = 'color : green;'> Login sucessful ! </h1>");
        } else {
//            req.setAttribute("errorUsername", "Incorrect username");
            req.getRequestDispatcher("./login.jsp").forward(req, resp);
//            resp.getWriter().println("<h1 style = 'color : red;'> Error - Login Error !</h1>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
