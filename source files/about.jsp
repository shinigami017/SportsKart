<!DOCTYPE html>
<html>

<head>
    <title>About Us</title>
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
            width: 80%;
            margin: auto;
            display: flex;
        }
        
        .container-item {
            flex: 1;
        }
        
        .container-item p {
            font-family: sans-serif;
        }
        
        #container-mid {
            margin-left: 30px;
            margin-right: 30px;
        }
        
        .container-item-head {
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 10px;
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
                    <a class="homepage-link" href="homepage.jsp">Home</a>>> About Us
                </div>
            </div>
            <div class="mid-2">
                <div class="container-heading">
                    <h3 style="text-align: center">About Us</h3>
                </div>
                <div class="container">
                    <div class="container-item">
                        <h4 style="text-align: center" class="container-item-head">WHO WE ARE</h4>
                        <p>A 2nd year student who had a goal to create something useful, something which could help people, started watching different shopping sites which were setting up a new trend. So, I created something that can be helpful for everyone
                            who is looking out for some Sports stuff. That's how I started and that's how I am still going on. SportsKart is India's one of its kind online personalized store with a group of brands to recommend you all kinds of sports
                            items as per your needs. It brings you a huge collection of products, created around various sports to inspire your fitness regime.</p>
                    </div>
                    <div class="container-item" id="container-mid">
                        <h4 style="text-align: center" class="container-item-head">WHAT WE DO</h4>
                        <p>Well, to start with - Everything to make you feel comfortable! A manager to update the store with your requirements, a delivery guarantee, and no question asked return/exchange policy and a promise to ensure quality in all our
                            products. Our famous fitness advice for all is: <b>Sweating while you shop counts as exercise!</b></p>
                    </div>
                    <div class="container-item">
                        <h4 style="text-align: center" class="container-item-head">HOW TO GET IT GOING</h4>
                        <p>Welcome to the world of SportsKart - a smart, quick and easy way to get yourself access to the Sports world around you. All you need to do is access our online storefront and fill out a brief survey to help us know your personal
                            needs and preferences. Once you tell us what you like, our team will take you to an exciting journey, showing you the variety we boast of and will help you choose the best. And believe us – online shopping at SportsKart is
                            a lot of fun, not even a bit of it will disappoint you.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <footer>
    </footer>
</body>


</html>