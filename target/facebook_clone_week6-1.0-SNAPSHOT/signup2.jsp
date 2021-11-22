<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 21/11/2021
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>registration</title>

    <title>CBOOKSOCIAL - Connect your world</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
    <script src="./js/jquery-2.2.4.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>

<%--    <link rel="stylesheet" href="main.css">--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="w3hubs.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300i,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">

    <style type="text/css">
        body {
            background-color: #f0f2f5;
            font-family: "Nunito Sans";
        }

        .login-form {
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, .1), 0 8px 16px rgba(0, 0, 0, .1);
            background-color: #fff;
            padding: 25px;
            margin-top: 25px;
            margin-left: 50px;
        }

        h3 {
            padding-left: 30px;
            padding-right: 20px;
        }

        .btn-custom {
            background-color: #1877f2;
            border: none;
            border-radius: 6px;
            font-size: 20px;
            line-height: 28px;
            color: #fff;
            font-weight: 700;
            height: 48px;
        }

        .btn-custom {
            color: #fff !important;
        }

        input {
            height: 52px;
            font-size: 18px !important;
            color: #f2f2f2;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0 rgba(13, 110, 253, .25);
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {

            .col-md-7,
            p {
                display: none;
            }

            input {
                font-size: 16px !important;
            }

            .login-form {
                box-shadow: none;

            }
        }

    </style>

</head>
<body style="display: flex; justify-content: center; align-items: center;">


<div class="col-md-5" id="sign-up-container">
    <div style=" margin-left: 50px; display:flex; align-items: center"><img src="https://static.xx.fbcdn.net/rsrc.php/y8/r/dF5SId3UHWd.svg" class="w-50"></div>
    <form class="login-form" method="post" action="${pageContext.request.contextPath}/RegisterServlet">
        <div class="mb-3">
            <input type="text" class="form-control" placeholder="User Name" name="username" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" placeholder="First Name" name="firstname" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" placeholder="Last Name" name="lastname" required>
        </div>
        <div class="mb-3">
            <select class="form-control" name="gender" >
                <option selected disabled>Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
        </div>
        <div class="mb-3">
            <label>Date of birth</label>
            <input type="date" class="form-control" name="date_of_birth" pattern="\d{4}-\d{2}-\d{2}" required>
        </div>
        <div class="mb-3">
            <input type="text" class="form-control" placeholder="Email address "
                   name="email" required>
        </div>
        <div class="mb-3">
            <input type="password" class="form-control" placeholder="Password" name="password" required>
        </div>

        <button type="submit" class="btn btn-custom btn-block btn-success btn-lg mt-3" id="create-account-2">
            Create New Account
        </button>

    </form>
    <p class="pt-3 text-center">have account already? <a id="back" href="http://localhost:8080/facebook_clone_week6_war_exploded/">Log In</a></p>
</div>
</div>
</div>
</body>
</html>
