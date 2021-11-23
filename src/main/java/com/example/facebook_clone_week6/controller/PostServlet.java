package com.example.facebook_clone_week6.controller;

import com.example.facebook_clone_week6.DAO.PostsDAO;
import com.example.facebook_clone_week6.dbConnectionProvider.DbConnection;
import com.example.facebook_clone_week6.model.Post;
import com.example.facebook_clone_week6.model.UserSignUp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "PostServlet", value = "/PostServlet")
@MultipartConfig
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        try(PrintWriter out = response.getWriter();){
            out.println("<html><body>");
            out.println("<h1>" + "Servlet Registration example" + "</h1>");
            out.println("</body></html>");

            HttpSession httpSession = request.getSession();

            //fetch data from post form
            Part part = request.getPart("file");
            String imageName = part.getSubmittedFileName();
            String title = request.getParameter("title");
            String body = request.getParameter("body");

            //get current user from session
            UserSignUp currentUser = (UserSignUp) httpSession.getAttribute("user");
            Long user_id = currentUser.getUser_id();

            //check if image name not empty
            if(imageName.equals("")){
                httpSession.setAttribute("message", "Enter a picture");
                response.sendRedirect("homePage.jsp");
                return;
            }

            //path to store image
            String path = "/Users/protek/Desktop/Facebook Clone Project/src/main/webapp/image"+ File.separator+imageName;

            InputStream in = part.getInputStream();
            boolean success = uploadFile(in, path);

            if(success){
                Post post = new Post(title, body, imageName);
                PostsDAO postDatabase = new PostsDAO(DbConnection.getConnection());

                if(postDatabase.createPost(user_id, post)){
                    out.println("File uploaded to this directory "+path);
                    httpSession.setAttribute("message", "File uploaded successfully");
                }else{
                    out.print("500 error");
                    httpSession.setAttribute("message", "Error uploading image to database");
                }
            }else{
                out.print("error");
                httpSession.setAttribute("message", "error uploading file");
            }
            response.sendRedirect("home.jsp");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    public boolean uploadFile(InputStream in, String path){
        boolean test = false;

        try{
            byte[] byt = new byte[in.available()];
            in.read(byt);
            FileOutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();
            test = true;
        }catch(Exception e){
            e.printStackTrace();
        }

        return test;
    }
}
