package com.Learning.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Learning.Dao.UserDao;
import com.Learning.Dao.UserDaoImp;

@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Use your DAO implementation
    private static UserDao userDao = new UserDaoImp();

    public loginservlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (userDao.isValidUser(username, password)) {
    
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("welcome.jsp");
        } else {
           
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
