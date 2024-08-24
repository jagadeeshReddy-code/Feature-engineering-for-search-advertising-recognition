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

<body>

<%
String id=null, username=null, email=null,mobile=null,address=null,city=null;

try
{
	id=request.getParameter("id");
Connection con=Dbconnection.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  addagency where id='"+id+"'");

if(rs.next())
{


	id=rs.getString("id");
	username=rs.getString("username");
	email=rs.getString("email");
	mobile=rs.getString("mobile"); 
	city=rs.getString("city");                  
    address=rs.getString("address");
   
     
}}
catch(Exception e){
	e.printStackTrace();
}



%>
<div class="row">   
           <div class="col-sm-4"></div>   
    <div class="col-sm-4">
    <h3>Update profile</h3>
    <form action="editaddaps.jsp" method="post" target="_parent" />
     <div class="form-group">
     <input type="hidden" name="id" value="<%=id%>">
    <label style="margin-top:5px;">UserName</label>
     <input type="text" placeholder="Name" name="username" value="<%=username%>" class="form-control" required>
       </div>
        <div class="form-group">
              <label style="margin-top:5px;">Email</label>
      <input type="email" placeholder="Email" name="email" value="<%=email%>" class="form-control" required>
        </div>
		 <div class="form-group">
				<label style="margin-top:4px;">Mobile</label>
        <input type="text" placeholder="phone number" name="mobile" value="<%=mobile%>"  class="form-control" required>
        </div>
         <div class="form-group">
				<label style="margin-top:4px;">CITY</label>
        <input type="text" placeholder="CITY" name="city" value="<%=city%>"  class="form-control" required>
        </div>
         <div class="form-group">
       <label style="margin-top:2px;">Address</label>
        <input type="text" placeholder="Address" name="address" value="<%=address%>" class="form-control" required>
       </div>
       <input type="submit"  class="btn btn-primary" value="Update"> <input type="reset"  class="btn btn-primary" value="Cancel">
    </form>
    </div>
    </div>
</body>
</html>