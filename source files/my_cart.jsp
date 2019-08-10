<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%String username=String.valueOf(session.getAttribute("user")); 
int total=0;%>
<!DOCTYPE html>
<html>

<head>
    <title>My Cart</title>
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
            margin-top: 25px;
            background-color: antiquewhite;
        }
        
        .home-link {
            margin-top: 20px;
            margin-left: 20px;
            font-size: 25px;
            font-weight: 500;
        }
        
        .homepage-link {
            font-weight: bold;
        }
        
        .order-table {
            width: 100%;
            height: 10vh;
            font-size: 25px;
            text-align: left;
        }
        
        .form-remove-button {
            text-align: center;
        }
        
        .remove {
            font-size: 25px;
            color: red;
            border: none;
            text-decoration: underline;
            background: none;
        }
        
        .remove:hover {
            color: black;
            background-color: rgb(233, 26, 26);
        }
        
        .buy-button {
            margin: 40px 95px auto auto;
        }
        
        .form-buy-button {
            text-align: right;
        }
        
        .buy {
            font-family: sans-serif;
            font-size: 20px;
            padding: 5px;
            border-radius: 30px;
            border: 2px solid rgb(238, 167, 13);
            background: none;
            color: rgb(238, 167, 13);
            height: 35px;
            width: 200px;
            cursor: pointer;
        }
        
        .buy:hover {
            background: rgb(238, 167, 13);
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
                    <a class="homepage-link" href="homepage.jsp">Home</a> >> My Cart
                </div>
            </div>
            <div class="mid-2">
                <table class="order-table" border="1">
                   <%try{
						Connection con=getConnection();
	                    String sql="select * from cart where username=?";
	                    PreparedStatement ps=con.prepareStatement(sql);
	                    ps.setString(1,username);
	                    ResultSet rs=ps.executeQuery();
	                    while(rs.next())
	                    {
	                    	total+=rs.getInt("price");%>
                    		<tr>
	                        	<td><%=rs.getString("name")%></td>
                        		<td><%=rs.getInt("price")%></td>
                        		<td>
                            		<form class="form-remove-button" action="remove_product.jsp?id=<%=rs.getInt("id")%>" method="post">
                            	  	  <button class="remove">Remove</button>
                            		</form>
                        		</td>
                    		</tr>
                    <% }
                   }catch(Exception ex){
                	  ex.printStackTrace(); 
                   }%>
                </table>
                <div class="buy-button">
                    <form class="form-buy-button" action="payment.jsp?total=<%=total %>" method="post">
                        <button class="buy">Proceed to Buy</button>
                    </form>
                </div>
            </div>
        </section>
    </div>
    <footer>
    </footer>
</body>


</html>