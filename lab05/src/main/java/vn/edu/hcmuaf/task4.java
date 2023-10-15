package vn.edu.hcmuaf;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/task4")
public class task4 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    private boolean checkdate(String day, String month, String year) {
        String datePattern2 = "^\\d{2}$";
        String datePattern4 = "^\\d{4}$";

        if (day.matches(datePattern2) && month.matches(datePattern2) && year.matches(datePattern4)) {
            int dayofmonth = 0;
            switch (Integer.valueOf(month)) {
                case 1:
                    dayofmonth = 31;
                case 2:
                    dayofmonth = 28;
                case 3:
                    dayofmonth = 31;
                case 4:
                    dayofmonth = 30;
                case 5:
                    dayofmonth = 31;
                case 6:
                    dayofmonth = 30;
                case 7:
                    dayofmonth = 31;
                case 8:
                    dayofmonth = 31;
                case 9:
                    dayofmonth = 30;
                case 10:
                    dayofmonth = 31;
                case 11:
                    dayofmonth = 30;
                case 12:
                    dayofmonth = 31;
            }
            if (Integer.valueOf(day) > dayofmonth && Integer.valueOf(day) < 0) {
                return false;
            }
        } else {
            return false;
        }
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String form2name = req.getParameter("full-name1");
        String form2mail = req.getParameter("email1");
        String form2phone = req.getParameter("phone");
        String form2select = req.getParameter("select");
        String form2message = req.getParameter("message");

        String form3name = req.getParameter("full-name2");
        String form3mail = req.getParameter("email2");
        String form3pass = req.getParameter("pass");
        String form3day = req.getParameter("day");
        String form3month = req.getParameter("month");
        String form3year = req.getParameter("year");

        String form3cart = req.getParameter("cart");
        String form3card = req.getParameter("card");
        String form3day2 = req.getParameter("day2");
        String form3year2 = req.getParameter("year2");
        String form3check = req.getParameter("check");


        if (form2name != "" || form2mail != "" || form2phone != "" || form2select != "") {
            resp.getWriter().println("<h1> Form1 </h1>");
            resp.getWriter().println("<b> Full name : </b>" + form2name);
            resp.getWriter().println("<b> Email : </b>" + form2mail);
            resp.getWriter().println("<b> Phone : </b>" + form2phone);
            resp.getWriter().println("<b> Needed services : </b>" + form2select);
            resp.getWriter().println("<b> Message : </b>" + form2message);
            resp.getWriter().println("<br> ---------------------");
            resp.getWriter().println("<h1> Form2 </h1>");
            resp.getWriter().println("<b> Full name : </b>" + form3name);
            resp.getWriter().println("<b> Email : </b>" + form3mail);
            resp.getWriter().println("<b> Pas : </b>" + form3pass);
            if (checkdate(form3day, form3month, form3year)) {
                resp.getWriter().println("<b> Day : </b>" + form3day);
                resp.getWriter().println("<b> Month : </b>" + form3month);
                resp.getWriter().println("<b> Year : </b>" + form3year);
            } else {
                resp.getWriter().println("<b> Format Error </b>");
            }
        }
    }
}
