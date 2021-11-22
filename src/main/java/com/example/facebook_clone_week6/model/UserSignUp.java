package com.example.facebook_clone_week6.model;

import java.sql.Date;

public class UserSignUp {
     private Long user_id;
     private String username;
     private String email;
     private String password;
     private Date date_of_birth;
     private String firstname;
     private String lastname;
     private String gender;

     public UserSignUp(Long user_id, String username, String email, String password, String firstname, String lastname, String gender) {
          this.user_id = user_id;
          this.username = username;
          this.email = email;
          this.password = password;
          this.firstname = firstname;
          this.lastname = lastname;
          this.gender = gender;
     }

     public UserSignUp(String username, String email, String password, String firstname, String lastname, String gender) {
          this.username = username;
          this.email = email;
          this.password = password;
          this.firstname = firstname;
          this.lastname = lastname;
          this.gender = gender;
     }

     public UserSignUp() {

     }

     public Long getUser_id() {
          return user_id;
     }

     public void setUser_id(Long user_id) {
          this.user_id = user_id;
     }

     public String getUsername() {
          return username;
     }

     public void setUsername(String username) {
          this.username = username;
     }

     public String getEmail() {
          return email;
     }

     public void setEmail(String email) {
          this.email = email;
     }

     public String getPassword() {
          return password;
     }

     public void setPassword(String password) {
          this.password = password;
     }

     public Date getDate_of_birth() {
          return date_of_birth;
     }

     public void setDate_of_birth(Date date_of_birth) {
          this.date_of_birth = date_of_birth;
     }

     public String getFirstname() {
          return firstname;
     }

     public void setFirstname(String firstname) {
          this.firstname = firstname;
     }

     public String getLastname() {
          return lastname;
     }

     public void setLastname(String lastname) {
          this.lastname = lastname;
     }

     public String getGender() {
          return gender;
     }

     public void setGender(String gender) {
          this.gender = gender;
     }
}
