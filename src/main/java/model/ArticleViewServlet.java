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

@WebServlet(name = "Article Servlet", value = {"/article/*"})
public class ArticleViewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo().substring(1);
        if (pathInfo.chars().allMatch(Character::isDigit)) {
            Integer value = Integer.valueOf(pathInfo);
            Article[] articles = ArticleDataBaseMock.getArticles();

            if (articles.length < value) {
                failArticleNumber(request, response);
            } else {
                request.setAttribute("articles", articles);
                request.setAttribute("someValue", value);

                RequestDispatcher dispatcher = request.getRequestDispatcher("/view/article-page.jsp");
                dispatcher.forward(request, response);
            }
        } else {
            failArticleNumber(request, response);
        }
    }

    private void failArticleNumber(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/error-page.jsp");
        dispatcher.forward(request, response);
    }
}
