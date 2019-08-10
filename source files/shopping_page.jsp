<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%String c=null,category=null; 
c=request.getParameter("category");
if(c!=null)
session.setAttribute("category",c);
category=String.valueOf(session.getAttribute("category"));
%>

<!DOCTYPE html>
<html>

<head>
    <title>Shopping Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="shopping_style.css" />
        <script>
        function msg()
        {alert("You have to log-in first")
		return false;}
    </script>
</head>

<body>
    <div class="base">
        <header>
            <div class="title">
                <h2>SportsKart</h2>
            </div>
            <nav class="nav-links">
                <% 
                    Object user1=session.getAttribute("user");
                    if(user1!=null){
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
                <div class="title-cart">
                    <div class="categories-title">
                        <h2><%=category%></h2>
                    </div>
                    <div class="my-cart">
                        <form action="my_cart.jsp">
                        <% if(session.getAttribute("user")!=null){ %>
                        	<button class="cart">My Cart</button>
                        <% } 
	                        else{ %>	
                        	<button class="cart" onclick="return msg()">My Cart</button>
                        	<%} %>
                        </form>
                    </div>
                </div>
                <div class="shop-container">
                    <table class="shop-table" border="none">
						<%try{
								int n=0;
	                            Connection con=getConnection();
	                            String sql="select * from items where category=?";
	                            PreparedStatement ps=con.prepareStatement(sql);
	                            ps.setString(1,category);
	                            ResultSet rs=ps.executeQuery();
	                            while(rs.next())
	                            { n++;}
	                            n=(n/4)+1;
	                            rs=ps.executeQuery();
	                            while(n-->0){%>
	                            <tr>
	                            <%for(int i=0;i<4&&rs.next();i++){%>
	                            <td>
	                            	<%  Blob blob = rs.getBlob("item_image");
	                            		byte byteArray[] = blob.getBytes(1, (int) blob.length());
	                                    String img=Base64.getEncoder().encodeToString(byteArray);
	                                    %>
	                                <img class="item-image" src="data:image/jpg;base64,<%=img%>">
	                                <p class="item-brand"><%= rs.getString("item_brand") %></p>
	                                <p class="item-info"><%= rs.getString("item_info") %></p>
	                                <p class="item-price"><%= rs.getInt("item_price") %></p>
	                                <form action="cart.jsp" method="post">
	                                      <input type="hidden" name="id" value=<%= rs.getInt("item_id") %> >
	                                      <% if(session.getAttribute("user")!=null){ %>
	                                      <input class="add-to-cart" type="submit" value="Add to Cart">
	                                      <% } 
	                                      else{ %>
	                                      <input class="add-to-cart" type="submit" value="Add to Cart" onclick="return msg()">
	                                      <% } %>
	                                </form></td>
	                                <% } 
	                              }
                              }
							catch(Exception ex)
							{ex.printStackTrace();}%>
                    </table>
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