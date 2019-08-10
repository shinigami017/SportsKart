<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp"%>
<%
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String npassword=request.getParameter("new_password");
String cnpassword=request.getParameter("confirm_new_password");
if(npassword.equals(cnpassword))
{
try{
	Connection con=getConnection();
	String sql="update accounts set password=? where email=? and phone=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,npassword);
	ps.setString(2,email);
	ps.setString(3,phone);
	int i=ps.executeUpdate();
	if(i>0){
		session.removeAttribute("user");
		session.removeAttribute("change_error");
		response.sendRedirect("login.jsp");
	}
	else{
		session.setAttribute("change_error","Invalid details! Please enter registered details");
		response.sendRedirect("change_password.jsp");
	}
}catch(Exception ex)
{
	ex.printStackTrace();
}
}else{
	session.setAttribute("change_error","Passwords different! Confirm your password");
	response.sendRedirect("change_password.jsp");
}
%>