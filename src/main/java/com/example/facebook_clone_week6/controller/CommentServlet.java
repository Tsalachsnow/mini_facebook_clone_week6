package com.example.facebook_clone_week6.controller;

import com.example.facebook_clone_week6.DAO.CommentDAO;
import com.example.facebook_clone_week6.dbConnectionProvider.DbConnection;
import com.example.facebook_clone_week6.model.UserSignUp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CommentServlet", value = "/CommentServlet")
public class CommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try(PrintWriter out = response.getWriter();){
            out.println("<html><body>");
            out.println("<h1>" + "Servlet Registration example" + "</h1>");
            out.println("</body></html>");

            //fetch data from post form
            String comment = request.getParameter("comment");
            Long postId = Long.parseLong(request.getParameter("postId"));

            //get current user
            HttpSession httpSession = request.getSession();
            UserSignUp currentUser = (UserSignUp) httpSession.getAttribute("user");
            Long userId = currentUser.getUser_id();

            //from the comment DOA
            CommentDAO commentDatabaseDatabase = new CommentDAO(DbConnection.getConnection());

            if(commentDatabaseDatabase.createComment(userId,postId,comment)){
                out.println("File uploaded to this directory");
                httpSession.setAttribute("message", "successful");
                httpSession.setAttribute("user",currentUser);
            }else{
                out.print("500 error");
                httpSession.setAttribute("user",currentUser);
                httpSession.setAttribute("message", "Error posting comment");
            }

            response.sendRedirect("home.jsp");

        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}