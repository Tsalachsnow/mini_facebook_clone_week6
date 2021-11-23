package com.example.facebook_clone_week6.DAO;

import com.example.facebook_clone_week6.model.Comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CommentDAO {
    private Connection dbConnection;

    public CommentDAO(Connection connection) {
        this.dbConnection = connection;
    }


    public boolean createComment(Long userId, Long postId, String comment){
        boolean result = false;
        try{
            String query = "insert into comment(post_id,user_id,comment) " +
                    "values (?,?,?)";

            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);
            preparedStatement.setLong(1, postId);
            preparedStatement.setLong(2, userId);
            preparedStatement.setString(3, comment);

            preparedStatement.executeUpdate();
            result = true;
        }catch (Exception e){
            e.printStackTrace();
        }

        return result;
    }


    public List<Comment> getComments(int postId){
        List<Comment> comments = new ArrayList();
        try{
            String query = "select u.surname, u.id, p.title, p.image_name, c.comment from comment c"
                    +"  join posts p on c.post_id=p.id join users u on u.id=c.user_id" +
                    " where post_id="+postId;

            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);
            ResultSet resultSet =  preparedStatement.executeQuery();

            while (resultSet.next()){
                Comment comment = new Comment();
                comment.setUsername(resultSet.getString("lastname"));
                comment.setUserId(resultSet.getLong("userId"));
                comment.setTitle(resultSet.getString("title"));
                comment.setPostImage(resultSet.getString("image_name"));
                comment.setComment(resultSet.getString("comment"));
                comments.add(comment);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return comments;
    }

    public boolean editComment(Long userId, Long postId, String comment){
        boolean status = false;
        try {
            String query = "update comment set comment=? where post_id=? and user_id=?";
            PreparedStatement prepared = this.dbConnection.prepareStatement(query);
            prepared.setString(1, comment);
            prepared.setLong(2, postId);
            prepared.setLong(3,userId);

            int result = prepared.executeUpdate();
            if(result > 0) {
                status = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public boolean deleteComment(Long postId, Long userId){
        boolean status =  false;

        try {
            String query = "delete from comment where post_id=? and user_id=?";
            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);
            preparedStatement.setLong(1, postId);
            preparedStatement.setLong(2,userId);

            int result = preparedStatement.executeUpdate();
            if(result > 0) {
                status = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
