package com.example.facebook_clone_week6.controller;

import com.example.facebook_clone_week6.DAO.UsersDAO;
import com.example.facebook_clone_week6.dbConnectionProvider.DbConnection;
import com.example.facebook_clone_week6.model.UserSignUp;
import com.example.facebook_clone_week6.utils.PasswordHashing;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession httpSession = request.getSession();

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        //Date date_of_birth = Date.valueOf(request.getParameter("date_of_birth"));
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String gender = request.getParameter("gender");


//
//        if (firstname.length() < 3) {
//            httpSession.setAttribute("Registration Error", " firstname cannot be less than 3 character long");
//            response.sendRedirect("index.jsp");
//            return;
//        }
//
//        if (lastname.length() < 3) {
//            httpSession.setAttribute("Registration Error", "surname cannot be less than 3 character long");
//            response.sendRedirect("index.jsp");
//            return;
//        }
//
//
//        if(password.length() < 7){
//            httpSession.setAttribute("Registration Error", "password cannot be less than 7 character long");
//            response.sendRedirect("index.jsp");
//            return;
//        }

        System.out.println("UserName: "+username);

        password = PasswordHashing.encryptPassword(password);

        UserSignUp userModel = new UserSignUp(username, email, password, firstname, lastname, gender);


       UsersDAO regUser = new UsersDAO(DbConnection.getConnection());

//        if (!regUser.registerUser(userModel)) {
//            String errorMessage = "failed";
//            httpSession.setAttribute("Registration Error", errorMessage);
//        }else{
//            String successful = "successful";
//            httpSession.setAttribute("Registration Successful", successful);
//        }

        regUser.registerUser(userModel);
        response.sendRedirect("index.jsp");
    }
}
