<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@include file="connection.jsp" %>
<%
String username=String.valueOf(session.getAttribute("user"));
String brand;
String info;
String name=null;
int price=0;
int id=Integer.parseInt(request.getParameter("id"));

try{
	Connection con=getConnection();
	String sql="select * from items where item_id=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(1,id);
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		brand=rs.getString("item_brand");
		info=rs.getString("item_info");
		name=brand+" "+info;
		price=rs.getInt("item_price");
	}
	sql="insert into cart values(?,?,?,?)";
	ps=con.prepareStatement(sql);
	ps.setString(1,username);
	ps.setInt(2,id);
	ps.setString(3,name);
	ps.setInt(4,price);
	int i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("shopping_page.jsp");
	}
}catch(Exception ex)
{
	ex.printStackTrace();
}
%>