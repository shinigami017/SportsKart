<!DOCTYPE html>
<html>

<head>
    <title>Contact Us</title>
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
        
        .container-heading {
            color: rgba(20, 5, 82, 0.966);
            margin-bottom: 5vh;
            font-size: 50px;
            font-weight: 700;
        }
        
        .container {
            width: 90%;
            margin: auto;
            display: flex;
        }
            .msg {
           
            font-family: 'Lato';
            margin-left: 15px;
            margin-bottom: 15px;
            font-size: 25px;
            color: rgba(4, 70, 4, 0.973);
            font-weight: 700;
        }
        
        .container-item {
            flex: 1;
            margin-left: 15px;
        }
        
        .container-item-head {
            font-size: 25px;
            font-weight: bold;
        }
        
        .contact-form {
            width: 100%;
            margin: auto;
        }
        
        #contact-form-1 {
            display: flex;
            justify-content: space-around;
        }
        
        .container-item-1 {
            padding: 5px;
            height: 35px;
            width: 300px;
            border-radius: 30px;
            border: 2px solid rgb(99, 97, 97);
        }
        
        .container-item-2 {
            width: 100%;
            height: 25vh;
            margin: 30px auto;
            padding: 15px;
            border-radius: 15px;
            border: 2px solid rgb(99, 97, 97);
        }
        
        .container-item-3 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            border-radius: 15px;
            border: 2px solid rgb(20, 12, 63);
            height: 45px;
            width: 130px;
            padding: inherit;
            margin: 15px 45%;
            background-color: rgba(243, 209, 242, 0.952);
            color: rgb(5, 0, 42);
            font-size: 25px;
            font-weight: 600;
        }
        
        .container-item-3:hover {
            background-color: rgba(5, 0, 42, 0.939);
            color: azure;
            font-weight: bold;
            border: none;
        }
        
        .report-submit {
            margin-top: 15px;
            text-align: center;
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
                    <a class="homepage-link" href="homepage.jsp">Home</a>>> Contact Us
                </div>
            </div>
            <div class="mid-2">

                <div class="contact" id="contact">
                    <div class="container-heading">
                        <h3 style="text-align: center">Contact Us</h3>
                    </div>
                    <%if(session.getAttribute("message_updated")!=null) {%>
                	<div class="message" style="text-align: center">
                  	  <h2 class="msg">Message submitted successfully! We'll get back to you soon.</h2>
                	</div>
                	<%session.removeAttribute("message_updated");
                	} %>
                    <div class="container">
                        <form class="contact-form" action="contact_messages.jsp" method="post">
                            <div class="container-item" id="contact-form-1">
                                <input class="container-item-1" type="text" placeholder="Name" name="name" required>
                                <input class="container-item-1" type="email" placeholder="Email" name="email" required>
                                <input class="container-item-1" type="text" placeholder="Phone" name="phone" required>
                            </div>
                            <div class="container-item">
                                <textarea class="container-item-2" placeholder="Enter your message" name="message" required=""></textarea>
                            </div>
                            <div class="container-item">
                                <input class="container-item-3" type="submit" value="SUBMIT">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <footer>
    </footer>
</body>


</html>