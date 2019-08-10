<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%
String mode=request.getParameter("mode");
String username=request.getParameter("username");
String password=request.getParameter("password");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String address=request.getParameter("address");
String sex=request.getParameter("sex");
String sql;
int i;
try{
	Connection con=getConnection();
	if(mode.equals("edit")){
		sql="update accounts set username=?,email=?,name=?,sex=?,phone=?,address=? where username=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,username);
		ps.setString(2,email);
		ps.setString(3,name);
		ps.setString(4,sex);
		ps.setString(5,phone);
		ps.setString(6,address);
		ps.setString(7,username);
		i=ps.executeUpdate();
	}
	else{
		sql="insert into accounts values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,username);
		ps.setString(2,password);
		ps.setString(3,email);
		ps.setString(4,name);
		ps.setString(5,sex);
		ps.setString(6,phone);
		ps.setString(7,address);
		i=ps.executeUpdate();
	}
	if(i>0){
		session.setAttribute("user",username);
		response.sendRedirect("user_profile.jsp");
	}
}catch(Exception ex)
{
	ex.printStackTrace();
}
%>