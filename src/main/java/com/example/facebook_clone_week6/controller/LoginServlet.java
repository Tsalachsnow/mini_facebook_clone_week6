package com.example.facebook_clone_week6.controller;

import com.example.facebook_clone_week6.DAO.UsersDAO;
import com.example.facebook_clone_week6.dbConnectionProvider.DbConnection;
import com.example.facebook_clone_week6.model.UserSignUp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();
        //get request data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //from user DOA
        UsersDAO userDataBase = new UsersDAO(DbConnection.getConnection());
        UserSignUp user = userDataBase.loginUser(username, password);

        if(user != null){
            httpSession.setAttribute("user", user);
            response.sendRedirect("homePage.jsp");
        }else{
            httpSession.setAttribute("Registration Error", "User not found, Enter Correct Password or Email");
            response.sendRedirect("index.jsp");
        }
    }
    }
