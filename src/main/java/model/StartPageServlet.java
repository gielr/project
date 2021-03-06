package model;

import utilities.Article;
import utilities.ArticleDataBaseMock;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Main Page", value = {"/start"})
public class StartPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Article[] articles = ArticleDataBaseMock.getArticles();

        request.setAttribute("articles", articles);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/main-page.jsp");

        dispatcher.forward(request, response);
    }
}
