<!doctype html>
<html>

<head>
    <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--<link rel="stylesheet" href="style.css">-->
    <style>
        body {
            margin: 0%;
            padding: 0%;
            font-family: 'Trebuchet MS';
            background-image: url(images/sports7.jpg);
            background-attachment: inherit;
            background-position: initial;
            background-repeat: no-repeat;
            background-size: cover;
            min-height: 100%;
        }
        
        .login-container {
            border: 5px solid rgb(99, 97, 97);
            width: 50%;
            margin: 50px auto 200px auto;
            background-color: aliceblue;
        }
        
        .login-title {
            font-size: 45px;
            text-align: center;
            color: #04220b;
        }
        
        .login-info {
            margin: 20px;
        }
        
        .login-form {
            margin: 10px 0px;
        }
        
        .login-alert {
            color: red;
            font-size: 20px;
        }
        
        .login-form-group {
            border-radius: 25px;
            border: 2px solid rgb(99, 97, 97);
            height: 30px;
            width: 99%;
            font-size: 23px;
            padding: 5px;
            margin: 6px auto;
        }
        
        #login-form-group-3 {
            border-radius: 25px;
            border: none;
            height: 40px;
            width: 99%;
            font-size: 23px;
            padding-block: 7px;
            margin: 6px auto;
            background-color: rgb(16, 150, 16);
            color: white;
        }
        
        #login-form-group-3:hover {
            border: 2px solid #04220b;
        }
        
        .login-bottom {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <div class="login-title">
            <h2>SportsKart</h2>
        </div>
        <hr>
        <div class="login-info">
            <%
            if(session.getAttribute("login_error")!=null){%>
                <div class="login-alert"><%=String.valueOf(session.getAttribute("login_error")) %></div>
            <%    session.removeAttribute("login_error");
            }%>
            
            <div class="login-form">
                <form class="login-page" action="validate_login.jsp" method="post">
                    <div><input class="login-form-group" id="login-form-group-1" type="text" name="username" placeholder="Username" required></div>
                    <div><input class="login-form-group" id="login-form-group-2" type="password" name="password" placeholder="Password" required></div>
                    <div><input id="login-form-group-3" type="submit" value="Login"></div>
                </form>
            </div>
            <div class="login-bottom">
                <div class="login-forgot-password">
                    <a class="fp-nu-title" href="change_password.jsp">Forgot Password</a>
                </div>
                <div class="login-new-user">
                    <a class="fp-nu-title" href="new_user.jsp">New User</a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>