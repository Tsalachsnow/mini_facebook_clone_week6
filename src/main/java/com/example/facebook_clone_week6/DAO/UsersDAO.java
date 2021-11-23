package com.example.facebook_clone_week6.DAO;

import com.example.facebook_clone_week6.model.UserSignUp;
import com.example.facebook_clone_week6.utils.PasswordHashing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsersDAO {
    private Connection dbConnection;

    public UsersDAO(Connection connection) {
        this.dbConnection = connection;
    }


    public boolean registerUser(UserSignUp user){
        boolean set = false;
        try{

            String query = "insert into user(username, email, password, firstname, lastname, gender) " +
                    "values (?,?,?,?,?,?)";

            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            //preparedStatement.setDate(4, user.getDate_of_birth());
            preparedStatement.setString(4, user.getFirstname());
            preparedStatement.setString(5, user.getLastname());
            preparedStatement.setString(6, user.getGender());

            preparedStatement.executeUpdate();
            set = true;
        }catch (Exception e){
            e.printStackTrace();
        }

        return set;
    }

    public UserSignUp loginUser(String username, String password){
        UserSignUp user = null;
        String query = "";

        try {
            query = "select * from user where username =?";

            PreparedStatement preparedStatement = this.dbConnection.prepareStatement(query);

            preparedStatement.setString(1, username);
//            preparedStatement.setString(2, password);

            ResultSet result = preparedStatement.executeQuery();

            if(result.next()){
                user = new UserSignUp();

                user.setUsername(result.getString("username"));
                user.setEmail(result.getString("email"));
                user.setPassword(result.getString("password"));
                //user.setDate_of_birth(result.getDate("date_of_birth"));
                user.setFirstname(result.getString("firstname"));
                user.setLastname(result.getString("lastname"));
                user.setGender(result.getString("gender"));


                String decryptPass = PasswordHashing.decryptPassword(result.getString("password"));

//                if(!decryptPass.equals(password)){
//                    return null;
//                }
            }
        }catch(Exception e){
        }

        return user;
    }


    public boolean deleteUser(String email){
        boolean success =  false;
        try {
            String query = "delete from user where email= ?";
            PreparedStatement prepared = this.dbConnection.prepareStatement(query);
            prepared.setString(1, email);

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
