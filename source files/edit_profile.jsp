<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%String username=String.valueOf(session.getAttribute("user"));%>
<!doctype html>
<html>

<head>
    <title>Edit Profile Page</title>
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
        
        .edit-profile-container {
            border: 5px solid rgb(99, 97, 97);
            width: 50%;
            margin: 0px auto 100px auto;
            background-color: aliceblue;
        }
        
        .edit-profile-title {
            font-size: 35px;
            text-align: center;
            color: #092a11;
        }
        
        .edit-profile-info {
            margin: 20px;
        }
        
        .edit-profile-form {
            margin: 10px 0px;
        }
        
        .edit-profile-form-group {
            border-radius: 25px;
            border: 2px solid rgb(99, 97, 97);
            height: 30px;
            width: 99%;
            font-size: 23px;
            padding: 5px;
            margin: 6px auto;
        }
        
        #edit-profile-form-group-2 {
            height: 45px;
            width: 100%;
        }
        
        #edit-profile-form-group-7 {
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
        
        #edit-profile-form-group-7:hover {
            border: 2px solid #04220b;
        }
    </style>
</head>

<body>
    <div class="logo">
        <h1>SportsKart</h1>
    </div>
    <div class="edit-profile-container">
        <div class="edit-profile-title">
            <h2>Edit Profile</h2>
        </div>
        <hr>
        <div class="edit-profile-info">
            <div class="edit-profile-form">
				<%
				try{
						Connection con=getConnection();
						String sql="select * from accounts where username=?";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setString(1,username);
						ResultSet rs=ps.executeQuery();
						while(rs.next()){ 
						%>
                		<form class="edit-profile-page" action="update_user.jsp?mode=edit" method="post">
	               		    <div><input class="edit-profile-form-group" id="edit-profile-form-group-1" type="text" name="name" value=<%=rs.getString("name")%> required></div>
	                    	<div><select type="text" name="sex" class="edit-profile-form-group" id="edit-profile-form-group-2" required="">
	                    						<%if(rs.getString("sex").equals("male")) {%>
	                                            <option class="edit-profile-form-group" value="male" selected>Male</option>
	                                            <option class="edit-profile-form-group" value="female">Female</option>
	                                            <option class="edit-profile-form-group" value="other">Other</option>
	                                            <%}else if(rs.getString("sex").equals("female")) { %>
	                                            <option class="edit-profile-form-group" value="male">Male</option>
	                                            <option class="edit-profile-form-group" value="female" selected>Female</option>
	                                            <option class="edit-profile-form-group" value="other">Other</option>
	                                            <%}else { %>
	                                            <option class="edit-profile-form-group" value="male">Male</option>
	                                            <option class="edit-profile-form-group" value="female">Female</option>
	                                            <option class="edit-profile-form-group" value="other" selected>Other</option>
	                                            <%}%>
	                                        </select>
	                    	</div>
	                    	<div><input class="edit-profile-form-group" id="edit-profile-form-group-3" type="number" name="phone" value=<%=rs.getString("phone")%> required></div>
	                    	<input type="hidden" name="password" value=<%=rs.getString("password")%>>
	                    	<div><input class="edit-profile-form-group" id="edit-profile-form-group-4" type="email" name="email" value=<%=rs.getString("email")%> required></div>
	                    	<div><input class="edit-profile-form-group" id="edit-profile-form-group-5" type="text" name="address" value=<%=rs.getString("address")%> required></div>
	                    	<div><input class="edit-profile-form-group" id="edit-profile-form-group-6" type="text" name="username" value=<%=rs.getString("username")%> readonly required></div>
	                    	<div><input id="edit-profile-form-group-7" type="submit" value="Update"></div>
                </form>
                <%}
			}
			catch(Exception ex){
			ex.printStackTrace();}%>
            </div>
        </div>
    </div>
</body>

</html>