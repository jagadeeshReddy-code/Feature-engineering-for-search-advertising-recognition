<%@page import="Action.Dbconnection"%>
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
try
{
	
	 String id=request.getParameter("id");  
    String status=request.getParameter("status");
    Connection con=Dbconnection.getConnection();
	Statement st=con.createStatement();
	int i=st.executeUpdate("update user set status='"+status+"' where id='"+id+"' "); 

	if(i>0)
	{
		%>
	<script type="text/javascript">
	alert("success");
	</script>
	
		
		<%

		response.setHeader("Refresh","0.05; URL=index.jsp");
	}
	
	else
	out.println("invalid");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>