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
String id=null, category=null,property=null,brand=null,city=null,price=null;

%>
<table class="table table-striped" border="2">
<tr>
<th><b>ID</b></th>
<th><b>CATEGORY</b></th>
<th><b>PROPERTY</b></th>
<th><b>BRAND</b></th>
<th><b>CITY</b></th>
<th><b>PRICE</b></th>
<th><b>IMAGE</b></th>
</tr>

<%

try
{

	

Connection con=Dbconnection.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  upload");

while(rs.next())
{

	id=rs.getString("id");
	category=rs.getString("category");
	property=rs.getString("property");
	brand=rs.getString("brand");
	city=rs.getString("city");
	price=rs.getString("price"); 
	
   
	

%>
<tr>
<td><%=id%></td>
<td ><%=category%></td>
<td><%=property%></td>
<td><%=brand%></td>
<td><%=city %></td>
<td><%=price %></td>
<td><img src="aimage.jsp?id=<%=id%>" width="100px" height="50px"></td>
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