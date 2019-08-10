<!DOCTYPE html>
<html>

<head>
    <title>Report</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        * {
            margin: 0%;
            padding: 0%;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Trebuchet MS';
            background-color: rgb(248, 242, 232);
        }
        
        header {
            background-color: darkgray;
            display: flex;
            width: 100%;
            margin: auto;
            height: 20vh;
            align-items: center;
        }
        
        .title {
            color: #04220b;
            font-size: 45px;
            margin-left: 50px;
        }
        
        .base {
            background-size: cover;
            min-height: 100%;
        }
        
        .mid {
            background-color: rgb(248, 242, 232);
            min-height: 70vh;
            width: 90%;
            margin: auto;
            display: block;
        }
        
        .mid-2 {
            margin: 15px;
        }
        
        .home-link {
            margin-top: 10px;
            margin-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }
        
        .homepage-link {
            font-weight: bold;
        }
        
        .report-form {
            align-content: center;
        }
        
        .msg {
            font-family: 'Lato';
            margin-left: 15px;
            font-size: 25px;
            color: rgba(4, 70, 4, 0.973);
            font-weight: 700;
        }
        
        .report-text {
            width: 100%;
            height: 50vh;
            margin-top: 15px;
            padding: 15px;
            border-radius: 15px;
            border: 2px solid rgb(99, 97, 97);
            font-size: 15px;
        }
        
        .report-submit {
            margin-top: 15px;
            text-align: center;
        }
        
        .submit-button {
            font-family: sans-serif;
            font-size: 20px;
            padding: 5px;
            border-radius: 30px;
            border: 2px solid rgb(26, 109, 109);
            background: transparent;
            color: #2b2b35;
            height: 35px;
            width: 135px;
            cursor: pointer;
        }
        
        .submit-button:hover {
            background: rgb(19, 129, 129);
            border: none;
            color: aliceblue;
        }
        
        footer {
            height: 7vh;
            background-color: darkgray;
        }
    </style>
</head>

<body>
    <div class="base">
        <header>
            <div class="title">
                <h2>SportsKart</h2>
            </div>
        </header>
        <hr>
        <section class="mid">
            <div class="mid-1">
                <div class="home-link">
                    <a class="homepage-link" href="homepage.jsp">Home</a> >> <a class="homepage-link" href="user_profile.jsp">My Profile</a> >> Report a problem
                </div>
            </div>
            <div class="mid-2">
            <%if(session.getAttribute("report_updated")!=null) {%>
                <div class="message" style="text-align: center">
                    <h2 class="msg">Report submitted successfully! We'll get back to you soon.</h2>
                </div>
                <%session.removeAttribute("report_updated");
                } %>
                <form class="report-form" action="user_report.jsp" method="post">
                    <div class="report-area">
                        <textarea class="report-text" name="report" placeholder="Share your suggestion/feedback/complain" required></textarea>
                    </div>
                    <div class="report-submit">
                        <input class="submit-button" type="submit" value="Submit">
                    </div>
                </form>
            </div>
        </section>
    </div>
    <footer>
    </footer>
</body>


</html>