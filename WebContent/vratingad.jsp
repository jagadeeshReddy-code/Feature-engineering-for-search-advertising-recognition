<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
String id=null, uname=null, category=null,brand=null,price=null,city=null,review=null,rating=null;

%>
<table class="table table-striped" border="2">
<tr>
<th><b>Id</b></th>
<th><b>USERNAME</b></th>
<th><b>CATEGORY</b></th>
<th><b>BRAND</b></th>
<th><b>PRICE</b></th>
<th><b>CITY</b></th>
<th><b>REVIEW</b></th>
<th><b>RATING</b></th>
<th><b>ACTION</b></th>
</tr>

<%

try
{
Connection con=Dbconnection.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  rating");

while(rs.next())
{
	 id=rs.getString("id");
     uname=rs.getString("uname");
	 category=rs.getString("category");
	brand=rs.getString("brand");
    price=rs.getString("price");
	city=rs.getString("city");  
	review=rs.getString("review");
	rating=rs.getString("rating");

%>
<tr>
<td><%=id%></td>
<td><%=uname%></td>
<td ><%=category%></td>
<td><%=brand%></td>
<td><%=price%></td>
<td><%=city%></td>
<td><%=review%></td>
<td><%=rating%></td>
<td><img src="rimage.jsp?brand=<%=brand%>" width="100px" height="50px"></td>
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