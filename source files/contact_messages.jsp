<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String message=request.getParameter("message");
String name=request.getParameter("name");
try{
	Connection con=getConnection();
	String sql="insert into contact_messages values(?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,email);
	ps.setString(2,phone);
	ps.setString(3,message);
	ps.setString(4,name);
	
	int i=ps.executeUpdate();
	if(i>0){
		session.setAttribute("message_updated", "message updated");
		response.sendRedirect("contact.jsp");
	}
}catch(Exception ex)
{
	ex.printStackTrace();
}
%>