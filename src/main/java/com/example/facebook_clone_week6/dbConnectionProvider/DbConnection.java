package com.example.facebook_clone_week6.dbConnectionProvider;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
    private static Connection connection;

    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/userSignUp?autoReconnect=true&serverTimezone=UTC&useSSL=False&allowPublicKeyRetrieval=true",
                    "root", "er0swccd");
        }catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }
}
