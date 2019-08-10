<!doctype html>
<html>

<head>
    <title>Sign Up Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
        
        .signup-container {
            border: 5px solid rgb(99, 97, 97);
            width: 50%;
            margin: 0px auto 100px auto;
            background-color: aliceblue;
        }
        
        .signup-title {
            font-size: 35px;
            text-align: center;
            color: #092a11;
        }
        
        .signup-info {
            margin: 20px;
        }
        
        .signup-form {
            margin: 10px 0px;
        }
        
        .signup-msg {
            color: rgb(3, 51, 51);
            font-size: 20px;
        }
        
        .signup-form-group {
            border-radius: 25px;
            border: 2px solid rgb(99, 97, 97);
            height: 30px;
            width: 99%;
            font-size: 23px;
            padding: 5px;
            margin: 6px auto;
        }
        
        #signup-form-group-2 {
            height: 45px;
            width: 100%;
        }
        
        #signup-form-group-7 {
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
        
        #signup-form-group-7:hover {
            border: 2px solid #04220b;
        }
    </style>
</head>

<body>
    <div class="logo">
        <h1>SportsKart</h1>
    </div>
    <div class="signup-container">
        <div class="signup-title">
            <h2>Register</h2>
        </div>
        <hr>
        <div class="signup-info">
            <div class="signup-msg">Enter following details :</div>
            <div class="signup-form">
                <form class="signup-page" action="update_user.jsp?mode=register" method="post">
                    <div><input class="signup-form-group" id="signup-form-group-1" type="text" name="name" placeholder="Name" required></div>
                    <div><select type="text" name="sex" class="signup-form-group" id="signup-form-group-2" required="">
                                            <option class="signup-form-group" value="male">Male</option>
                                            <option class="signup-form-group" value="female">Female</option>
                                            <option class="signup-form-group" value="other">Other</option>
                                        </select>
                    </div>
                    <div><input class="signup-form-group" id="signup-form-group-3" type="number" name="phone" placeholder="Mobile no." required></div>
                    <div><input class="signup-form-group" id="signup-form-group-4" type="email" name="email" placeholder="Email" required></div>
                    <div><input class="signup-form-group" id="signup-form-group-5" type="text" name="address" placeholder="Address" required></div>
                    <div><input class="signup-form-group" id="signup-form-group-6" type="text" name="username" placeholder="Username" required></div>
                    <div><input class="signup-form-group" id="signup-form-group-8" type="password" name="password" placeholder="Password" required></div>
                    <div><input id="signup-form-group-7" type="submit" value="Sign Up"></div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>