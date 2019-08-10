<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
	Connection con=getConnection();
	String sql="select * from accounts where username=? and password=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,username);
	ps.setString(2,password);
    ResultSet rs=ps.executeQuery();
    if(rs.next()){
    	session.removeAttribute("login_error");
    	session.setAttribute("user", username);
    	response.sendRedirect("homepage.jsp");
    }
    else{
    	session.setAttribute("login_error", "Incorrect username or password");
    	response.sendRedirect("login.jsp");
    }
}
catch(Exception ex){
ex.printStackTrace();}
%>