<%int total=Integer.parseInt(request.getParameter("total")); %>
<!DOCTYPE html>
<html>

<head>
    <title>Payment Methods</title>
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
            background-color: antiquewhite;
            width: 40%;
            margin: 25px auto;
        }
        
        .home-link {
            margin-top: 20px;
            margin-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }
        
        .payment-methods {
            margin-top: 20px;
        }
        
        .amount-info {
            text-align: center;
        }
        
        .text {
            margin: 20px auto;
            color: rgb(0, 0, 0);
            font-size: 20px;
            font-weight: 800;
            display: inline-block;
        }
        
        .amount {
            margin: 20px auto;
            color: rgb(17, 17, 90);
            font-size: 25px;
            font-weight: 800;
            display: inline-block;
        }
        
        .msg {
            margin-left: 15px;
            font-size: 15px;
            color: black;
        }
        
        .payment-options {
            overflow: hidden;
        }
        
        .payment-option {
            margin: 15px;
        }
        
        .payment-tabs {
            position: relative;
            color: rgb(54, 13, 92);
        }
        
        .payment-tabs:before {
            position: absolute;
            margin: 15px;
            font-size: 25px;
            color: rgb(54, 13, 92);
            font-weight: 500;
        }
        
        .hidden-payment-info {
            margin: 5px auto 5px 50px;
            overflow: hidden;
            transition: max-height 0.3s;
            max-height: 0;
        }
        
        .hidden-payment-option {
            display: block;
            font-size: 15px;
            color: rgb(54, 13, 92);
            font-weight: 300;
            margin: auto;
            position: relative;
        }
        
        .payment-option:target .hidden-payment-info {
            max-height: 20vh;
        }
        
        #cod {
            margin-left: 0%;
        }
        
        #cod .payment-tabs {
            margin-left: 10px;
        }
        
        .buy-button {
            margin: 25px auto;
            text-align: center;
        }
        
        .buy {
            font-family: sans-serif;
            font-size: 30px;
            border-radius: 30px;
            border: 2px solid rgb(12, 153, 12);
            background: none;
            color: rgb(12, 153, 12);
            height: 40px;
            width: 200px;
            padding-block: initial;
            cursor: pointer;
        }
        
        .buy:hover {
            background: rgb(16, 150, 16);
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
                    <a class="homepage-link" href="homepage.jsp"><b>Home</b></a> >> <a class="homepage-link" href="my_cart.jsp"><b>My Cart</b></a> >> Payment Methods
                </div>
            </div>
            <div class="mid-2">
                <section class="payment-methods">
                    <div class="amount-info">
                        <p class="text">Amount to pay : </p>
                        <p class="amount">&#x20B9;<%=total %></p>
                    </div>
                    <div class="message">
                        <h2 class="msg">Choose any payment option</h2>
                    </div>
                    <form class="payment-options" action="order.jsp" method="post">

                        <li class="payment-option" id="net-banking"><a class="payment-tabs" href="#net-banking">using net-banking</a>

                            <div class="hidden-payment-info" id="hidden-1">

                                <select class="hidden-payment-option" type="text" name="bank">
                                            <option class="hidden-payment-option" value=null disabled selected>Select a bank</option>
                                            <option class="hidden-payment-option" value="AXB">Axis Bank</option>
                                            <option class="hidden-payment-option" value="BOB">Bank of Baroda</option>
                                            <option class="hidden-payment-option" value="HDFC">HDFC Bank</option>
                                            <option class="hidden-payment-option" value="ICICI">ICICI Bank</option>
                                            <option class="hidden-payment-option" value="PNB">Punjab National Bank</option>
                                            <option class="hidden-payment-option" value="SBI">State Bank of India</option>
                                </select><br>
                                <input class="hidden-payment-option" type="text" name="username" placeholder="username"><br>
                                <input class="hidden-payment-option" type="password" name="password" placeholder="password">

                            </div>
                        </li>

                        <li class="payment-option" id="Debit/Credit-card"><a class="payment-tabs" href="#Debit/Credit-card">using Debit/Credit card</a>

                            <div class="hidden-payment-info" id="hidden-2">
                                <select class="hidden-payment-option" type="text" name="card">
                                        <option class="hidden-payment-option" value=null disabled selected>Select card type</option>
                                        <option class="hidden-payment-option" value="MDC">Maestro Debit Card</option>
                                        <option class="hidden-payment-option" value="MSC">Master Card</option>
                                        <option class="hidden-payment-option" value="RPC">RuPay Card</option>
                                        <option class="hidden-payment-option" value="VDC">Visa Debit Card</option>
                                </select><br>
                                <input class="hidden-payment-option" type="number" name="card_number" placeholder="Enter 16-digit card no."><br>
                                <input class="hidden-payment-option" type="password" name="pin" placeholder="Enter your pin">
                            </div>
                        </li>


                        <li class="payment-option" id="upi"><a class="payment-tabs" href="#upi">via UPI</a>
                            <div class="hidden-payment-info" id="hidden-3"><input class="hidden-payment-option" type="email" name="upi" placeholder="Enter upi id"></div>
                        </li>

                        <div class="payment-option" id="cod"><input type="checkbox" name="payment-method" value="cod"><a class="payment-tabs" href="#">Cash on Delivery</a></div>
                        <div class="buy-button"><input class="buy" type="submit" value="Continue"></div>
                    </form>
                </section>
            </div>
        </section>
    </div>
    <footer>
    </footer>
</body>


</html>