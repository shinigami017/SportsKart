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
            width: 60%;
            margin: 25px auto;
        }
        
        .home-link {
            margin-top: 20px;
            margin-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }
        
        .payment-status,
        .message {
            margin: 25px auto;
            text-align: center;
        }
        
        .payment-status-message {
            margin-top: 30px;
            font-family: sans-serif;
            font-size: 25px;
            border-radius: 30px;
            border: none;
            background: rgb(15, 136, 15);
            color: aliceblue;
            height: 40px;
            width: 225px;
            padding-block: initial;
            cursor: pointer;
        }
        
        .payment-status-message:hover {
            border: 2px solid rgb(12, 26, 12);
        }
        
        .order-message {
            margin: 30px auto;
            color: rgb(26, 23, 23);
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
                <section class="payment-status-info">
                    <div class="payment-status">
                        <button class="payment-status-message">Order Confirmed</button>
                    </div>
                    <hr>
                    <div class="message">
                        <p class="order-message">You have successfully placed your order. Your order will be delivered within 2-3 working days. Visit to your <a href="my_orders.jsp"><b>orders</b></a> to track your order. Thank you for shopping with us.</p>
                    </div>
                    <div style="height: 1px;"></div>
                </section>
            </div>
        </section>
    </div>
    <footer>
    </footer>
</body>


</html>