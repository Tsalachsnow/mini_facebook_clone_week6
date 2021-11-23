<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<Title>Facebook Sign In</Title>
<head>

        <title>CBOOKSOCIAL - Connect your world</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./font-awesome/css/font-awesome.min.css">

        <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">

<%--        <link rel="stylesheet" href="main.css">--%>
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
                    display: flex;
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

<body>

<div class="container">
    <div class="like-and-create-account row align-items-center justify-content-center vh-100" style="display: flex;padding: 0 70px; justify-content: space-around;">
        <div class="col-md-7">
            <img class="logobdy" src="https://static.xx.fbcdn.net/rsrc.php/v3/yx/r/iauQmlDrivH.png">
            <p class="like_font font1" style="color:#083987; font-family: Arial; font-size: 25px; font-weight: bold;">Thanks for stopping by!</p>
            <p class="like_font" style="color: #333333; font-size: 25px; font-family: Arial;">We hope to see you again soon.</p>

        </div>
        <div class="col-md-5" id="login-container">
            <form class="login-form" method="post" action="${pageContext.request.contextPath}/LoginServlet">

                <div class="mb-3">
                    <input type="text" class="form-control" name="username" placeholder="User name" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" name="password" placeholder="Password" required>
                </div>
                <a href="homePage.jsp"><button type="submit" class="btn btn-custom btn-lg btn-block mt-3" id="login-btn">Login</button></a>
                <div class="text-center pt-3 pb-3">
                    <a href="#" class="">Forgotten password?</a>
                    <hr>
                    <a href="signup2.jsp"><button type="button" class="btn btn-success btn-lg mt-3" id="create-account-1">Create New Account
                    </button></a>
                </div>
            </form>
            <p class="pt-3 text-center"><b>Create a Page</b> for a celebrity, band or business.</p>
        </div>
    </div>
</div>
</body>
</html>
