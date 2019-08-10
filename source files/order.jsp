<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@include file="connection.jsp" %>

<%
String username=String.valueOf(session.getAttribute("user"));
String status="Received";
String name=null;
int price=0;
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//storing today date
String date=sdf.format(new Date());
try{
	Connection con=getConnection();
	String sql="select * from cart where username=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,username);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		name=rs.getString("name");
		price=rs.getInt("price");
		sql="insert into orders(name,price,date,status,username) values(?,?,?,?,?)";
		ps=con.prepareStatement(sql);
		ps.setString(1,name);
		ps.setInt(2,price);
		ps.setString(3,date);
		ps.setString(4,status);
		ps.setString(5,username);
		int i=ps.executeUpdate();
		if(i>0){
			sql="delete from cart where id=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1,rs.getInt("id"));
			i=ps.executeUpdate();
			response.sendRedirect("payment_confirmation.jsp");
		}
	}
}catch(Exception ex)
{
	ex.printStackTrace();
}
%>