<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.*"%>
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


	String a="admin";
	String user="user";
	String agency="agency";
	String c=request.getParameter("usertype");
	String c1 = request.getParameter("name");
	String c2 = request.getParameter("pswrd");
	
System.out.println(c+"  "+c1+""+c2);
	try {
		
	
	Connection con =Dbconnection.getConnection();
	Statement st = con.createStatement();
	
	if(c.equals(a)){

		ResultSet rs = st
				.executeQuery("select * from admin where username='" + c1
						+ "' and password='" + c2 + "'");
	
	
	
	if (rs.next()) {
		
	System.out.println(c1);
		response.sendRedirect("admin.jsp");
	}
	} 
	else if(c.equals(user)){
		ResultSet rs = st
				.executeQuery("select * from user where username='" + c1
						+ "' and password='" + c2+ "'  ");
	
		if(rs.next()) {
		 System.out.println(c2); 
		 
		 session.setAttribute("uname",c1);
		 session.setAttribute("uid",rs.getString("id"));
		response.sendRedirect("User.jsp");
		}
	}  
	else if(c.equals(agency)){
		ResultSet rs = st
				.executeQuery("select * from addagency where username='" + c1
						+ "' and password='" + c2+ "'  ");
	
		if(rs.next()) {
		 System.out.println(c2); 
		 session.setAttribute("aname",c1);
		 session.setAttribute("aid",rs.getString("id"));
		response.sendRedirect("Addagency.jsp");
		}
	}  
	else{
		response.sendRedirect("index.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
	
}
%>
</body>
</html>