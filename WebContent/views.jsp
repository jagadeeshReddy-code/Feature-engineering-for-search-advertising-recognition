<%@page import="java.sql.*"%>
<%@page import="Action.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
 String uname=session.getAttribute("uname").toString();

String category=request.getParameter("category");
String property=request.getParameter("property");
String brand=request.getParameter("brand");
String price=request.getParameter("price");
String city=request.getParameter("city");  
String review=request.getParameter("review");
String rating=request.getParameter("rating");
try
{
    Connection con=Dbconnection.getConnection();
	Statement stmt=con.createStatement();
	String sql="insert into rating(uname,category,property,brand,price,city,review,rating) values ('"+uname+"','"+category+"','"+property+"','"+brand+"','"+price+"','"+city+"','"+review+"','"+rating+"')  ";
    System.out.println(sql);
    int i=stmt.executeUpdate(sql);
	if(i>0)
	{
		out.println("successfully Updated");
		response.sendRedirect("User.jsp");
	}
	else
	{
		out.println("connection error");
	}}
catch(Exception e)
{
e.printStackTrace();	
}
%>
</body>
</html>