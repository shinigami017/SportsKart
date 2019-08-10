<!doctype html>
<html>

<head>
    <title>Change Password Page</title>
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
        
        .logo {
            font-size: 35px;
            color: #04220b;
            margin-left: 20px;
        }
        .login-alert {
            color: red;
            font-size: 20px;
	margin-bottom:10px;
        }
        
        .change-password-container {
            border: 5px solid rgb(99, 97, 97);
            width: 50%;
            margin: 0px auto 100px auto;
            background-color: aliceblue;
        }
        
        .change-password-title {
            font-size: 35px;
            text-align: center;
            color: #092a11;
        }
        
        .change-password-info {
            margin: 20px;
        }
        
        .change-password-form {
            margin: 10px 0px;
        }
        
        .change-password-msg {
            color: rgb(3, 51, 51);
            font-size: 20px;
        }
        
        .change-password-form-group {
            border-radius: 25px;
            border: 2px solid rgb(99, 97, 97);
            height: 30px;
            width: 99%;
            font-size: 23px;
            padding: 5px;
            margin: 6px auto;
        }
        
        #change-password-form-group-4 {
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
        
        #change-password-form-group-4:hover {
            border: 2px solid #04220b;
        }
    </style>
</head>

<body>
    <div class="logo">
        <h1>SportsKart</h1>
    </div>
    <div class="change-password-container">
        <div class="change-password-title">
            <h2>User Password</h2>
        </div>
        <hr>
        <div class="change-password-info">
	<%
            if(session.getAttribute("change_error")!=null){%>
                <div class="login-alert"><%=String.valueOf(session.getAttribute("change_error")) %></div>
            <%    
    		session.removeAttribute("change_error");
            }%>
            <div class="change-password-msg">Enter following details :</div>
            <div class="change-password-form">
                <form class="change-password-page" action="update_password.jsp" method="post">
                    <div><input class="change-password-form-group" id="change-password-form-group-1" type="number" name="phone" placeholder="Mobile no." required></div>
                    <div><input class="change-password-form-group" id="change-password-form-group-2" type="email" name="email" placeholder="Email" required></div>
                    <div><input class="change-password-form-group" id="change-password-form-group-3" type="password" name="new_password" placeholder="New Password" required></div>
                    <div><input class="change-password-form-group" id="change-password-form-group-5" type="password" name="confirm_new_password" placeholder="Confirm New Password" required></div>
                    <div><input id="change-password-form-group-4" type="submit" value="Change Password"></div>
                </form>
            </div>
        </div>
    </div>
</body>


</html>