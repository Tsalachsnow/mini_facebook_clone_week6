package com.example.facebook_clone_week6.DAO;

import com.example.facebook_clone_week6.model.Post;
import com.example.facebook_clone_week6.model.UserSignUp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PostsDAO {
    private Connection dbConnection;

    public PostsDAO(Connection connection) {
        this.dbConnection = connection;
    }

    public boolean createPost(Long user_id, Post post){
        boolean result = false;
        try{
            String query = "insert into posts(title,body,image_name,user_id) " +
                    "values (?,?,?,?)";

            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);
            preparedStatement.setString(1, post.getTitle());
            preparedStatement.setString(2, post.getBody());
            preparedStatement.setString(3, post.getImage_name());
            preparedStatement.setLong(4, user_id);

            preparedStatement.executeUpdate();
            result = true;
        }catch (Exception e){
            e.printStackTrace();
        }

        return result;
    }

    public Post getPostById(Long postId){
        Post post = null;

        try{
            String query = "select p.post_id, p.title, p.body, u.email from posts p"
                    +"  join users u on p.user_id=u.post_id where p.post_id=?";

            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);
            preparedStatement.setLong(1,postId);
            ResultSet result = preparedStatement.executeQuery();

            if(result.next()){
                post = new Post();

                post.setPost_id(result.getLong("post_id"));
                post.setTitle(result.getString("title"));
                post.setBody(result.getString("body"));
                post.setEmail(result.getString("email"));

                return post;
            }
        }catch (Exception e){
        }

        return post;
    }

    public List<Post> getPosts(UserSignUp currentUser){

        List<Post> posts = new ArrayList<>();

        try{
            String query = "select p.id, p.title, p.body, p.image_name, u.surname from posts p"
                    +"  join users u on p.user_id=u.post_id order by p.post_id DESC";
            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);
            ResultSet result = preparedStatement.executeQuery();
            Post post = null;

            while(result.next()){
                post = new Post();
                post.setPost_id(result.getLong("post_id"));
                post.setTitle(result.getString("title"));
                post.setBody(result.getString("body"));
                post.setImage_name(result.getString("image_name"));
                post.setName(result.getString("lastname"));

                //the total number of likes on this particular post
                String que = "select * from likes where post_id="+post.getPost_id();
                PreparedStatement prepared = this.dbConnection.prepareStatement(que);
                ResultSet res = prepared.executeQuery();
                res.last();
                int no_of_likes = res.getRow();
                post.setNo_of_likes(no_of_likes);

                //no of comments made on that particular posts
                String que1 = "select * from comment where post_id="+post.getPost_id();
                PreparedStatement prepared1 = this.dbConnection.prepareStatement(que1);
                ResultSet res1 = prepared1.executeQuery();
                res1.last();
                int no_of_comments = res1.getRow();
                post.setNo_of_comments(no_of_comments);

                //return true if current user liked this post, else false
                String que2 = "select * from likes where post_id="+post.getPost_id()+" and user_id="+currentUser.getUser_id();
                PreparedStatement prepared2 = this.dbConnection.prepareStatement(que2);
                ResultSet res2 = prepared2.executeQuery();
                if(res2.next()) {
                    post.setLikedPost(true);
                }

                //add post to arraylist
                posts.add(post);

            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return posts;
    }

    public boolean updatePost(Long postId, Post newPost){
        boolean success = false;

        try {
            String query = "update posts set title=?, body=? where id=?";
            PreparedStatement prepared = this.dbConnection.prepareStatement(query);

            prepared.setString(1, newPost.getTitle());
            prepared.setString(2, newPost.getBody());
            prepared.setLong(3, postId);

            int result = prepared.executeUpdate();

            if(result > 0) {
                success = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    public boolean deletePost(Long userId, Long postId){
        boolean success =  false;
        try {
            String query = "delete from posts where post_id= ? and user_id=?";
            PreparedStatement prepared = this.dbConnection.prepareStatement(query);
            prepared.setLong(1, postId);
            prepared.setLong(2, userId);
            int result = prepared.executeUpdate();

            if(result > 0) {
                success = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }

}
