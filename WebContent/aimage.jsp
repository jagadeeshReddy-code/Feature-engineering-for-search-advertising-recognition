<%@page import="Action.Dbconnection"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String id=request.getParameter("id");
try {
	ResultSet rs=null;
	Connection con=Dbconnection.getConnection();
	PreparedStatement ps=con.prepareStatement("Select * from upload where id='"+id+"'");
	rs=ps.executeQuery();
	rs.next();
	Blob b=rs.getBlob("image");
	response.setContentType(("image/jpg"));
	response.setContentLength( (int) b.length());
	InputStream is = b.getBinaryStream();
	OutputStream os = response.getOutputStream();
	byte buf[] = new byte[(int) b.length()];
	is.read(buf); os.write(buf);
	os.close();
	}
	catch (Exception e) {
	    System.out.println(e);
	}
	finally {   
		
	}

%>

</body>
</html>