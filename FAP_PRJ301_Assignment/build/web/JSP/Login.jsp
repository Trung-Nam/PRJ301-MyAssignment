<%-- 
    Document   : Login
    Created on : May 30, 2022, 9:00:50 PM
    Author     : ASUS G731G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign in and Sign up form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
              rel="stylesheet">
        <link rel="stylesheet" href="./assets/css/style.css">
        <script src="./assets/js/app.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="form-container">
                <!-- Sign in form : start-->
                <div class="signin-signup">
                    <form action="#" class="sign-in-form">
                        <h2 class="title">Sign in</h2>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" name="username" placeholder="Username">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" name="password" placeholder="Password">
                        </div>
                        <input type="submit" class="btn solid" value="Login">
                        <p class="social-tex">Or sign in with social platforms</p>
                        <div class="social-media">
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </div>
                    </form>
                </div>
                <!-- Sign in form : end-->
                <!-- Sign up form : start-->
                <div class="signup-signup">
                    <form action="#" class="sign-up-form">
                        <h2 class="title">Sign Up</h2>
                        <div class="input-field">
                            <i class="fas fa-user"></i>
                            <input type="text" name="username" placeholder="Username">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-envelope"></i>
                            <input type="email" name="Email" placeholder="Email">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" name="password" placeholder="Password">
                        </div>
                        <div class="input-field">
                            <i class="fas fa-lock"></i>
                            <input type="password" name="password" placeholder="Enter the password">
                        </div>
                        <input type="submit" class="btn solid" value="Register">
                        <p class="social-tex">Or Sign up with social platforms</p>
                        <div class="social-media">
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook"></i>
                            </a>
                        </div>
                    </form>
                </div>
                <!-- Sign up form : end-->
            </div>

            <div class="panels-container">
                <div class="panel left-panel">
                    <div class="content">
                        <h3>FPT UNIVERSITY</h3>
                        <p>Academic Portal</p>
                        <button class="btn transparent" id="sign-up-button">Sign Up</button>
                    </div>
                    <img src="./assets/image/cocc.png" alt="coc fu" class="image image-left">
                </div>
                <div class="panel right-panel">
                    <div class="content">
                        <h3>You have an account </h3>
                        <p>Sign in now !</p>
                        <button class="btn transparent" id="sign-in-button">Sign In</button>
                    </div>
                    <img src="./assets/image/undraw_login_re_4vu2.svg" alt="login" class="image image-right">
                </div>
            </div>
        </div>
    </body>
</html>
