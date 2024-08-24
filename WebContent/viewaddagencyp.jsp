<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body><br><br>
<%
String id=null, username=null, email=null,mobile=null,address=null,city=null;

%>
<table class="table table-striped" border="2">
<tr>
<th><b>ID</b></th>
<th><b>USERNAME</b></th>
<th><b>EMAIL</b></th>
<th><b>MOBILE</b></th>
<th><b>CITY</b></th>
<th><b>ADDRESS</b></th>
<th><b>ACTION</b></th>
</tr>

<%

try
{

	
Connection con=Dbconnection.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  addagency");

while(rs.next())
{

	id=rs.getString("id");
	username=rs.getString("username");
	email=rs.getString("email");
	mobile=rs.getString("mobile"); 
	city=rs.getString("city");                  
     address=rs.getString("address");
   
	

%>
<tr>
<td><%=id%></td>
<td ><%=username%></td>
<td><%=email%></td>
<td><%=mobile %></td>
<td><%=city%></td>
<td><%=address %></td>
<td> <a href="editaddap.jsp?id=<%=id%>"><input type="submit" value="EditProfile" class="btn btn-primary" ></a></td>
</tr>
<%
}}
catch(Exception e){
	e.printStackTrace();
}

%>

</table>
</body>
</html>