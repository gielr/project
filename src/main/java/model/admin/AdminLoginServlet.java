package model.admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Admin Login Servlet", value = {"/admin/login"})
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminLogin = "admin";
        String adminPassword = "root";

//        String userLogin = "user";
//        String userPassword = "123";

        String givenLogin = request.getParameter("login");
        String givenPassword = request.getParameter("password");

        if(givenLogin.equals(adminLogin) && givenPassword.equals(adminPassword)){
            request.getSession().setAttribute("isAdmin","True");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin-panel-page.jsp");
            dispatcher.forward(request, response);
        } else {
            String error = "Nieprawidlowy login bądź hasło!";
            request.setAttribute("error", error);
            doGet(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin-login-page.jsp");
        dispatcher.forward(request, response);
    }
}
