package com.Learning.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Learning.Dao.UserDao;
import com.Learning.Dao.UserDaoImp;
import com.Learning.model.User;

@WebServlet("/signUpservlet")
public class signUpservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static UserDao userDao = new UserDaoImp();   

    public signUpservlet() {
        super();
    }
  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("signUp.jsp");  
    }

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        if (userDao.addUser(user)) {
           
            response.sendRedirect("login.jsp?registration=success");
        } else {
            response.sendRedirect("signUp.jsp?error=1");
        }
    }
}
