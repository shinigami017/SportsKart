<!DOCTYPE html>
<html>

<head>
    <title>Homepage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="home_style.css" />

</head>

<body>
    <div class="base">
        <header>
            <div class="title">
                <h2>SportsKart</h2>
            </div>
            <nav>
                <ul class="nav-links">
                    <% 
                        Object user=session.getAttribute("user");
                        if(user!=null){
                    %> 
                    <li>
                        <a class="nav-link" href="user_profile.jsp">Profile</a>
                    </li>
                    <% }
                    else{ %>
                     <li>
                        <a class="nav-link" href="login.jsp">Profile</a>
                    </li>
                    <% } %>
                    <li>
                        <a class="nav-link" href="about.jsp">About Us</a>
                    </li>
                    <li>
                        <a class="nav-link" href="contact.jsp">Contact Us</a>
                    </li>
                </ul>
            </nav>
            <%
            if(session.getAttribute("user")==null) {
            %>
            <li id="login-text"><a class="nav-link" id="flex-end" href="login.jsp">Login</a></li>
            <%} else {%>
            <li id="login-text"><a class="nav-link" id="flex-end" href="user_profile.jsp">Hi, <%=String.valueOf(session.getAttribute("user"))%></a></li>
            <% } %>
        </header>
        <hr>
        <section class="mid">
            <div class="categories-container">
                <div class="categories-title">
                    <h2>Categories</h2>
                </div>
                <div class="group">
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Badminton" ><img class="element-image" src="images/badminton/bad.jpg"></a>
                    </div>
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Basketball" ><img class="element-image" src="images/basketball/bas.jpg"></a>
                    </div>
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Cricket"><img class="element-image" src="images/cricket/cric.jpg"></a>
                    </div>
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Football"><img class="element-image" src="images/football/foot.jpg"></a>
                    </div>
                </div>
                <div class="group">
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Hockey"><img class="element-image" src="images/hockey/hoc.jpg"></a>
                    </div>
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Table-Tennis" ><img class="element-image" src="images/table tennis/tt.jpg"></a>
                    </div>
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Tennis" ><img class="element-image" src="images/tennis/ten.jpg"></a>
                    </div>
                    <div class="categories-element">
                        <a href="shopping_page.jsp?category=Volleyball" ><img class="element-image" src="images/volleyball/vol.jpg"></a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <footer>
        <div class="footer-area">
            <div class="footer-text">
                <h4>Follow us</h4>
            </div>
            <div class="footer-tab">
                <div class="footer-button">
                    <form action="#">
                        <button class="go-to-top"><img class="arrow" src="images/arrow3.png" onmouseover="this.src='images/arrow4.png'" onmouseout="this.src='images/arrow3.png'" /></button>
                    </form>
                </div>
                <div class="logos">
                    <a href="#"><img class="logo" src="images/facebook.png"></a>
                    <a href="#"><img class="logo" src="images/linkedin.png"></a>
                    <a href="#"><img class="logo" src="images/instagram.png"></a>
                    <a href="#"><img class="logo" src="images/pinterest.png"></a>
                    <a href="#"><img class="logo" src="images/twitter.png"></a>
                </div>
            </div>
            <div class="footer-text">
                <i>© 2019 Brand. SportsKart(India) Private Limited. All rights reserved. Owned by Satyam Bhatia.</i>
            </div>
        </div>
    </footer>
</body>


</html>