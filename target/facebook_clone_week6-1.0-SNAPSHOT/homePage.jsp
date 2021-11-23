<%@ page import="com.example.facebook_clone_week6.model.UserSignUp" %>
<%@ page import="com.example.facebook_clone_week6.DAO.PostsDAO" %>
<%@ page import="com.example.facebook_clone_week6.dbConnectionProvider.DbConnection" %>
<%@ page import="com.example.facebook_clone_week6.model.Post" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 20/11/2021
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link rel="shortcut icon" href="./images/logo.png" type="image/x-icon">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"--%>
<%--          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="--%>
<%--          crossorigin="anonymous" referrerpolicy="no-referrer" />--%>
<%--    <link rel="stylesheet" href="homePage.css">--%>
<%--    <title>HOMEPAGE</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<nav>--%>
<%--    <div class="nav-left">--%>
<%--        <img src="./images/logo.png" alt="Logo">--%>
<%--        <input type="text" placeholder="Search HOMEPAGE..">--%>
<%--    </div>--%>
<%--    <div class="nav-middle">--%>
<%--        <a href="#" class="active">--%>
<%--            <i class="fa fa-home"></i>--%>
<%--        </a>--%>
<%--        <a href="#">--%>
<%--            <i class="fa fa-user-friends"></i>--%>
<%--        </a>--%>
<%--        <a href="#">--%>
<%--            <i class="fa fa-play-circle"></i>--%>
<%--        </a>--%>
<%--        <a href="#">--%>
<%--            <i class="fa fa-users"></i>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--    <div class="nav-right">--%>
<%--        <span class="profile"></span>--%>
<%--        <a href="#">--%>
<%--            <i class="fa fa-bell"></i>--%>
<%--        </a>--%>
<%--        <a href="#">--%>
<%--            <i class="fas fa-ellipsis-h"></i>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--<div class="container">--%>
<%--    <div class="left-panel">--%>
<%--        <ul>--%>
<%--            <li>--%>
<%--                <span class="profile"></span>--%>
<%--                <p>Aashish Panthi</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fa fa-user-friends"></i>--%>
<%--                <p>Friends</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fa fa-play-circle"></i>--%>
<%--                <p>Videos</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fa fa-flag"></i>--%>
<%--                <p>Pages</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fa fa-users"></i>--%>
<%--                <p>Groups</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fa fa-bookmark"></i>--%>
<%--                <p>Bookmark</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fab fa-facebook-messenger"></i>--%>
<%--                <p>Inbox</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fas fa-calendar-week"></i>--%>
<%--                <p>Events</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fa fa-bullhorn"></i>--%>
<%--                <p>Ads</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fas fa-hands-helping"></i>--%>
<%--                <p>Offers</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fas fa-briefcase"></i>--%>
<%--                <p>Jobs</p>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <p>Favourites</p>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <div class="footer-links">--%>
<%--            <a href="#">Privacy</a>--%>
<%--            <a href="#">Terms</a>--%>
<%--            <a href="#">Advance</a>--%>
<%--            <a href="#">More</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="middle-panel">--%>
<%--        <div class="story-section">--%>
<%--            <div class="story create">--%>
<%--                <div class="dp-image">--%>
<%--                    <img src="./images/dp.jpg" alt="Profile pic">--%>
<%--                </div>--%>
<%--                <span class="dp-container">--%>
<%--                        <i class="fa fa-plus"></i>--%>
<%--                    </span>--%>
<%--                <span class="name">Create Story</span>--%>
<%--            </div>--%>
<%--            <div class="story">--%>
<%--                <img src="./images/model.jpg" alt="Anuska's story">--%>
<%--                <div class="dp-container">--%>
<%--                    <img src="./images/girl.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Anuska Sharma</p>--%>
<%--            </div>--%>
<%--            <div class="story">--%>
<%--                <img src="./images/boy.jpg" alt="Story image">--%>
<%--                <span class="dp-container">--%>
<%--                        <img src="./images/dp.jpg" alt="Profile pic">--%>
<%--                    </span>--%>
<%--                <span class="name">Gaurav Gall</span>--%>
<%--            </div>--%>
<%--            <div class="story">--%>
<%--                <img src="./images/mountains.jpg" alt="Story image">--%>
<%--                <span class="dp-container">--%>
<%--                        <img src="./images/boy.jpg" alt="Profile pic">--%>
<%--                    </span>--%>
<%--                <span class="name">Priyank Saksena</span>--%>
<%--            </div>--%>
<%--            <div class="story">--%>
<%--                <img src="./images/shoes.jpg" alt="Story image">--%>
<%--                <span class="dp-container">--%>
<%--                        <img src="./images/model.jpg" alt="Profile pic">--%>
<%--                    </span>--%>
<%--                <span class="name">Pragati Adhikari</span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="post create">--%>
<%--            <div class="post-top">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/girl.jpg" alt="">--%>
<%--                </div>--%>
<%--                <input type="text" placeholder="What's on your mind, Aashish ?" />--%>
<%--            </div>--%>
<%--            <div class="post-bottom">--%>
<%--                <div class="action">--%>
<%--                    <i class="fa fa-video"></i>--%>
<%--                    <span>Live video</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="fa fa-image"></i>--%>
<%--                    <span>Photo/Video</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="fa fa-smile"></i>--%>
<%--                    <span>Feeling/Activity</span>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="post">--%>
<%--            <div class="post-top">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/girl.jpg" alt="">--%>
<%--                </div>--%>
<%--                <div class="post-info">--%>
<%--                    <p class="name">Anuska Sharma</p>--%>
<%--                    <span class="time">12 hrs ago</span>--%>
<%--                </div>--%>
<%--                <i class="fas fa-ellipsis-h"></i>--%>
<%--            </div>--%>
<%--            <div class="post-content">--%>
<%--                Roses are red <br>--%>
<%--                Violets are blue <br>--%>
<%--                I'm ugly & you are too😏--%>
<%--            </div>--%>
<%--            <div class="post-bottom">--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-thumbs-up"></i>--%>
<%--                    <span>Like</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-comment"></i>--%>
<%--                    <span>Comment</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="fa fa-share"></i>--%>
<%--                    <span>Share</span>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="post">--%>
<%--            <div class="post-top">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/dp.jpg" alt="">--%>
<%--                </div>--%>
<%--                <div class="post-info">--%>
<%--                    <p class="name">Ramesh GC</p>--%>
<%--                    <span class="time">2 days ago</span>--%>
<%--                </div>--%>
<%--                <i class="fas fa-ellipsis-h"></i>--%>
<%--            </div>--%>
<%--            <div class="post-content">--%>
<%--                Mountains are so cool--%>
<%--                <img src="images/mountains.jpg" />--%>
<%--            </div>--%>
<%--            <div class="post-bottom">--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-thumbs-up"></i>--%>
<%--                    <span>Like</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-comment"></i>--%>
<%--                    <span>Comment</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="fa fa-share"></i>--%>
<%--                    <span>Share</span>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="post">--%>
<%--            <div class="post-top">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/boy.jpg" alt="">--%>
<%--                </div>--%>
<%--                <div class="post-info">--%>
<%--                    <p class="name">Priyank Saksena</p>--%>
<%--                    <span class="time">1 week ago</span>--%>
<%--                </div>--%>
<%--                <i class="fas fa-ellipsis-h"></i>--%>
<%--            </div>--%>
<%--            <div class="post-content">--%>
<%--                Happy birthday dear--%>
<%--                <img src="./images/girl_with_light.jpg" alt="Mountains">--%>
<%--            </div>--%>
<%--            <div class="post-bottom">--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-thumbs-up"></i>--%>
<%--                    <span>Like</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-comment"></i>--%>
<%--                    <span>Comment</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="fa fa-share"></i>--%>
<%--                    <span>Share</span>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="post">--%>
<%--            <div class="post-top">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/model.jpg" alt="">--%>
<%--                </div>--%>
<%--                <div class="post-info">--%>
<%--                    <p class="name">Pragati Adhikari</p>--%>
<%--                    <span class="time">5 mins ago</span>--%>
<%--                </div>--%>
<%--                <i class="fas fa-ellipsis-h"></i>--%>
<%--            </div>--%>
<%--            <div class="post-content">--%>
<%--                Hey, everybody! My new shoes are here--%>
<%--                <img src="./images/shoes.jpg" alt="Shoes">--%>
<%--            </div>--%>
<%--            <div class="post-bottom">--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-thumbs-up"></i>--%>
<%--                    <span>Like</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="far fa-comment"></i>--%>
<%--                    <span>Comment</span>--%>
<%--                </div>--%>
<%--                <div class="action">--%>
<%--                    <i class="fa fa-share"></i>--%>
<%--                    <span>Share</span>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="right-panel">--%>
<%--        <div class="pages-section">--%>
<%--            <h4>Your pages</h4>--%>
<%--            <a class='page' href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/logo.png" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Cody</p>--%>
<%--            </a>--%>
<%--            <a class='page' href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/dp.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Cody Tutorials</p>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="friends-section">--%>
<%--            <h4>Friends</h4>--%>
<%--            <a class='friend' href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/dp.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Henry Mosely</p>--%>
<%--            </a>--%>
<%--            <a class='friend' href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/shoes.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">George</p>--%>
<%--            </a>--%>
<%--            <a class="friend" href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/boy.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Aakash Malhotra</p>--%>
<%--            </a>--%>
<%--            <a class="friend" href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/model.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Ragini Khanna</p>--%>
<%--            </a>--%>
<%--            <a class="friend" href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/boy.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Justin Bieber</p>--%>
<%--            </a>--%>
<%--            <a class="friend" href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/dp.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Ramesh GC</p>--%>
<%--            </a>--%>
<%--            <a class="friend" href="#">--%>
<%--                <div class="dp">--%>
<%--                    <img src="./images/model.jpg" alt="">--%>
<%--                </div>--%>
<%--                <p class="name">Sajita Gurung</p>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<%--=======jfjksbmzc j,mnZc ================--%>

<!DOCTYPE html>
<html>
<head>
    <title>Facebook Home Page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>timeline</title>
    <!-- JQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
            crossorigin="anonymous"
    />
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"
    ></script>
    <script src="${pageContext.request.contextPath}/js/home.js"></script>
    <link rel="stylesheet" href="css/home.css" />
</head>
<body>
<%
    UserSignUp user = (UserSignUp) session.getAttribute("user");


    if(session.getAttribute("message") != null){%>
<div class="alert alert-primary" role="alert">
    <%=session.getAttribute("message").toString()%>
</div>
<%}

    if(user == null){
        session.setAttribute("Registration Error", "!!!Please Login first");
        response.sendRedirect("index.jsp");
    }else{
        PostsDAO postData = new PostsDAO(DbConnection.getConnection());
        List<Post> posts = postData.getPosts(user);
%>

<nav class="navbar navbar-expand-lg navbar-success bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#" style="font-size: larger">Facebook</a>
        <form class="d-flex">
            <input
                    class="me-2 searchbar"
                    type="search"
                    placeholder="Search Facebook...."
                    aria-label="Search"
            />
        </form>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                    ><img src="./image/marketplace.png" class="pictures alt="
                    /></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                    ><img src="./image/group.png" class="pictures alt="
                    /></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                    ><img src="./image/watch.png" class="pictures alt=" />
                        <p class="yourfeed"></p
                        ></a>
                </li>
                <li class="nav-item"></li>
                <li class="nav-item">
                    <a class="nav-link" href="#"
                    ><img src="./image/friends.png" class="pictures alt="
                    /></a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                            style="color:#fff;"
                    ><img src="./image/mypicture.jpeg" href="./image/mypicture.jpeg" class="pix" alt="" />
                        <%=user.getFirstname() +" "+ user.getLastname() %>
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="index.jsp">Logout</a></li>
                        <li><a class="dropdown-item" href="#">Setting</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#">friends</a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex">
                <a class="nav-link active" aria-current="page" href="#"
                ><img src="./image/marketplace.png" class="pictures alt="
                /></a>
                <a class="nav-link active" aria-current="page" href="#"
                ><img src="./image/group.png" class="pictures alt="
                /></a>
            </form>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-3">
            <div class="fix">
                <div>
                    <img src="image/mypicture.jpeg" href="image/mypicture.jpeg" class="pix" alt="" />
                    <p class="yourfeed"><%=user.getFirstname() +" "+ user.getLastname() %> Show</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/love.png " class="pictures" alt="" />
                    <p class="yourfeed">Covid-19 Information Centre</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/friends.png" class="pictures alt=" />
                    <p class="yourfeed">Friends</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/group.png" class="pictures alt=" />
                    <p class="yourfeed">Groups</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/marketplace.png" class="pictures alt=" />
                    <p class="yourfeed">Marketplace</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/watch.png" class="pictures alt=" />
                    <p class="yourfeed">Watch</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/Events.png" class="pictures alt=" />
                    <p class="yourfeed">Event</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/marketplace.png" class="pictures alt=" />
                    <p class="yourfeed">Memory</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/Saved.png " class="pictures alt=" />
                    <p class="yourfeed">save</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/Pages.png " class="pictures alt=" />
                    <p class="yourfeed">Pages</p>
                </div>
                <div class="yourfeed1">
                    <img src="image/semore.png" class="pictures alt=" />
                    <p class="yourfeed">See more</p>
                </div>
                <p class="text">Your Shortcuts</p>
                <img src="" alt="" />
                <p>
                    <small
                    >Privacy · Terms · Advertising · Ad Choices · Cookies · ·
                        Facebook © 2021</small
                    >
                </p>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="scroller like-icon" style="height:  700px">
                <%
                    for (Post each:posts) {%>
                <div class="linear" style="background-color: #ffffff">
                    <div class="titleText">
                        <h2 style="color: #fff; padding: 10px; background-color: dodgerblue"><%=each.getTitle()%></h2>
                        <p style="color: #000; padding: 10px;"><span style="font-weight: bold; font-size: 1.1em;">Author:</span>
                            <%=each.getName()%></p>
                    </div>
                    <img src="./image/<%=each.getImage_name()%>" class="majorpix" alt="" />
                </div>
                <div class="body">
                    <p><%=each.getBody()%></p>
                </div>
                <hr>
                <div class="comment_like_share mb-2">
                    <div class="like">
                        <i onclick="like(<%=each.getPost_id()%>, <%=user.getUser_id()%>)" id="<%=each.getPost_id()%>"
                           style="color: #ffffff" class="fa fa-thumbs-o-up" aria-hidden="true">
                            <span class="likes"><%=each.getNo_of_likes()%></span>
                            <span style="display:none;" class="thumb"><%=each.getPost_id()%></span></i>
                        <p style="display: none" class="userLiked"><%=each.isLikedPost()%></p>

                    </div>
                    <div class="comment">
                        <i class="fa fa-commenting-o" aria-hidden="true" onclick="com(<%=each.getPost_id()%>)">
                                            <span><%=each.getNo_of_comments()%>
                        </i>
                    </div>
                    <div class="edit">
                        <i class="fa fa-edit" aria-hidden="true" onclick="edit(<%=each.getPost_id()%>)">
                        </i>
                    </div>
                    <div class="delete">
                        <i class="fa fa-remove" aria-hidden="true" id="delete" onclick="del(<%=each.getPost_id()%>)">
                        </i>
                    </div>
                </div>
                <div class="row mb-2">
                    <form action="/CommentServlet" method="POST">
                        <input style="display:none" name="postId" value="<%=each.getPost_id()%>"/>
                        <textarea
                                name="comment"
                                class="form-control drag"
                                placeholder="What's on your mind <%=user.getLastname()%>?"
                        ></textarea>
                        <button type="summit" class="btn btn-primary btn-md mt-3 btn-block">
                            Comment
                        </button>
                    </form>
                </div>
                <%}
                %>
            </div>
        </div>
        <div class="col-lg-3 third">
            <div class="postArea">
                <form action="/PostServlet" method="POST" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="post-title" class="form-label">Title</label>
                        <input
                                type="text"
                                name="title"
                                class="form-control"
                                id="post-title"
                                placeholder="Post Title"
                                required
                        />
                    </div>
                    <div class="mb-2">
                        <textarea
                                style="border-radius: 30px"
                                name="body"
                                id="post"
                                cols="30"
                                rows="2"
                                class="form-control"
                                aria-describedby="emailHelp"
                                placeholder="Whats on your mind <%=user.getLastname()%>"
                                required
                        ></textarea>
                    </div>
                    <div class="row post-buttons mb-4">
                        <div class="col-md-6 col-btn">
                            <label class="form-label" for="customFile">Photo</label>
                            <input type="file" name="file" class="form-control" id="customFile" required/>
                        </div>
                        <div class="col-md-6 col-btn">
                            <p></p>
                            <button type="submit" class="btn btn-primary btn-md mt-3 btn-block">
                                Post
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<footer></footer>
<script
        src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
        integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
        integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
        crossorigin="anonymous"
></script>
<script src="https://use.fontawesome.com/aed9ef824b.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<%}
%>
</body>
</html>

