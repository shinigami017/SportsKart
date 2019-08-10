<%@ page import="java.sql.*" %>
<%!
public static Connection con=null;
public static Connection getConnection(){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sportskart","root","6267282");
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return con;
}
%>