<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%String username=String.valueOf(session.getAttribute("user"));
session.removeAttribute("report_updated");%>
<!DOCTYPE html>
<html>

<head>
    <title>Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="user_style.css" />
</head>

<body>
    <div class="base">
        <header>
            <div class="title">
                <h2>SportsKart</h2>
            </div>
            <nav>
                <ul class="nav-links">
                    <li><a class="nav-link" href="my_cart.jsp">My Cart</a></li>
                    <li><a class="nav-link" href="my_orders.jsp">My Orders</a></li>
                    <li><a class="nav-link" href="change_password.jsp">Change Password</a></li>
                    <li><a class="nav-link" href="report.jsp">Report</a></li>
                    <li><a class="nav-link" href="logout.jsp">Logout</a></li>
                </ul>
            </nav>
        </header>
        <hr>
        <section class="mid">
            <div class="mid-1">
                <div class="home-link">
                    <a class="homepage-link" href="homepage.jsp">Home</a>>> My Profile
                </div>
            </div>
            <div class="mid-2">
                <div class="user-logo"><img class="ulogo" src="images/user_logo.png" /></div>
                <div class="user-info">
					<%
					try{
							Connection con=getConnection();
							String sql="select * from accounts where username=?";
							PreparedStatement ps=con.prepareStatement(sql);
							ps.setString(1,username);
						    ResultSet rs=ps.executeQuery();
						    while(rs.next()){ 
						    	 %>
						    	<h2><%=rs.getString("username")%></h2>
			                    <h4 class="user-info-1"><%=rs.getString("name")%></h4>
			                    <h4 class="user-info-1"><%=rs.getString("phone")%></h4>
			                    <h4 class="user-info-1"><%=rs.getString("email")%></h4>
			                    <h4 class="user-info-1"><%=rs.getString("address")%></h4>
						    <%}
					    }
					catch(Exception ex){
					ex.printStackTrace();}
					%>
                </div>
                <div class="edit-profile-button">
                    <form action="edit_profile.jsp" method="post">
                        <button class="edit-profile"><strong>Edit Profile</strong></button>
                    </form>
                </div>
            </div>
        </section>
    </div>
    <footer>
    </footer>
</body>


</html>