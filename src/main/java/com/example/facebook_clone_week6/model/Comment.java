package com.example.facebook_clone_week6.model;

public class Comment {
    private String title;
    private String postImage;
    private String username;
    private Long userId;


    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    private String comment;

    public Comment() {
    }

    public Comment(String title, String postImage, String username, String comment) {
        this.title = title;
        this.postImage = postImage;
        this.username = username;
        this.comment = comment;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPostImage() {
        return postImage;
    }

    public void setPostImage(String postImage) {
        this.postImage = postImage;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "title='" + title + '\'' +
                ", postImage='" + postImage + '\'' +
                ", username='" + username + '\'' +
                ", comment='" + comment + '\'' +
                '}';
    }
}
