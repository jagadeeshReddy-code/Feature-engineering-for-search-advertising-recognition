<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

String s1=request.getParameter("f1");
String s2=request.getParameter("f2");


try
{
	Connection con =Dbconnection.getConnection();
	Statement st = con.createStatement();
int i=st.executeUpdate("update addagency set password='"+s2+"' where username='"+s1+"'  ");
if(i>0)
{
	
	out.println("updated succesfully");

	}
else
{
	out.println("unsuccess");
}
con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}


%>
</body>
</html>