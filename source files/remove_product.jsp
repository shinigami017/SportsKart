<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%
int id=Integer.parseInt(request.getParameter("id"));
try{
	Connection con=getConnection();
	String sql="delete from cart where id=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(1,id);
	int i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("my_cart.jsp");
	}
}catch(Exception ex)
{
	ex.printStackTrace();
}
%>