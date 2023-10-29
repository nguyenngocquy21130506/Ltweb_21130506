package vn.edu.hcmuaf;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/task3")
public class task3 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username") == null ? "" : req.getParameter("username");
        String password = req.getParameter("password") == null ? "" : req.getParameter("password");

        System.out.println("username : "+username);
        if(!username.contains("@")) {
            req.setAttribute("Emailerror", "Email is error !");
            req.getRequestDispatcher("./task3.jsp").forward(req,resp);
        }

        if (username.equals("user@gmail.com") && password.equals("123")) {
//            resp.getWriter().println("<h1>Username : </h1>");
//            resp.getWriter().println(username);
//            resp.getWriter().println("<h1>Password : </h1>");
//            resp.getWriter().println(password);
            resp.getWriter().println("<h1 style = 'color : green;'> Login sucessful ! </h1>");
        } else {
//            req.setAttribute("errorUsername" , "Incorrect username");
//            req.getRequestDispatcher("task3.jsp").forward(req,resp);
            resp.getWriter().println("<h1 style = 'color : red;'> Error - Login Error !</h1>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
