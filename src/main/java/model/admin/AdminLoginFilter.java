package model.admin;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "UTF-8_Filter", urlPatterns = {"/admin/panel"})
public class AdminLoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest hsr = (HttpServletRequest) servletRequest;
        HttpSession sesion = hsr.getSession();
        String isAdmin = (String) sesion.getAttribute("isAdmin");

        if (isAdmin != null && isAdmin.equals("True")) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            RequestDispatcher dispatcher = servletRequest.getRequestDispatcher("/admin/login");
            dispatcher.forward(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
