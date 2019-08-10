<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%
String username=String.valueOf(session.getAttribute("user"));
String report=request.getParameter("report");
try{
	Connection con=getConnection();
	String sql="insert into reports values(?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,username);
	ps.setString(2,report);
	int i=ps.executeUpdate();
	if(i>0){
		session.setAttribute("report_updated", "report updated");
		response.sendRedirect("report.jsp");
	}
}catch(Exception ex)
{
	ex.printStackTrace();
}
%>