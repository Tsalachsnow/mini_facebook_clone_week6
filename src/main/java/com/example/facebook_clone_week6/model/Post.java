package com.example.facebook_clone_week6.model;

public class Post {
    private Long post_id;
    private String title;
    private String body;
    private String image_name;
    private String name;
    private String email;
    private int no_of_likes;
    private int no_of_comments;
    private boolean likedPost;

    public Post(String title, String body, String image_name) {
        this.title = title;
        this.body = body;
        this.image_name = image_name;
    }

    public Post(){
    }

    public Post(String title, String body) {
        this.title = title;
        this.body = body;
    }

    public Long getPost_id() {
        return post_id;
    }

    public void setPost_id(Long post_id) {
        this.post_id = post_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getImage_name() {
        return image_name;
    }

    public void setImage_name(String image_name) {
        this.image_name = image_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String lastname) {
        this.name = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNo_of_likes() {
        return no_of_likes;
    }

    public void setNo_of_likes(int no_of_likes) {
        this.no_of_likes = no_of_likes;
    }

    public int getNo_of_comments() {
        return no_of_comments;
    }

    public void setNo_of_comments(int no_of_comments) {
        this.no_of_comments = no_of_comments;
    }

    public boolean isLikedPost() {
        return likedPost;
    }

    public void setLikedPost(boolean likedPost) {
        this.likedPost = likedPost;
    }

    @Override
    public String toString() {
        return "Post{" +
                "post_id=" + post_id +
                ", title='" + title + '\'' +
                ", body='" + body + '\'' +
                ", imageName='" + image_name + '\'' +
                ", name='" + name + '\'' +
                ", noLikes=" + no_of_likes +
                ", noComments=" + no_of_comments +
                ", likedPost=" + likedPost +
                '}';
    }
}

