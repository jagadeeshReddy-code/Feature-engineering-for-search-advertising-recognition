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
 String id=session.getAttribute("aid").toString();
String username=request.getParameter("username");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");  
String city=request.getParameter("city");
String address=request.getParameter("address");
try
{
    Connection con=Dbconnection.getConnection();
	Statement stmt=con.createStatement();
	String sql="update addagency set username='"+username+"',email='"+email+"',mobile='"+mobile+"',city='"+city+"',address='"+address+"' where id='"+id+"' ";
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