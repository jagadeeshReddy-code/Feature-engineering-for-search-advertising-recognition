
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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


String name=request.getParameter("name");
String password=request.getParameter("pwd");  
String emailid=request.getParameter("emailid");
String mobile=request.getParameter("mobile");  
String city=request.getParameter("city");
String address=request.getParameter("address");

try
{

 Connection con=Dbconnection.getConnection();
Statement  st=con.createStatement();
int i= st.executeUpdate("insert into addagency (username,password,email,mobile,city,address) values('"+name+"','"+password+"','"+emailid+"','"+mobile+"','"+city+"','"+address+"') ");
out.println("inserted Sucessfully");
if(i>0){
	
	
	response.sendRedirect("index.jsp");
}

}
catch(Exception e){
	out.println(e);


}


%>
</body>
</html>