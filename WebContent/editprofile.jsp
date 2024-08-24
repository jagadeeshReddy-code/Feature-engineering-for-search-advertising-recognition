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
String id=null, username=null, email=null,gender=null,dob=null,mobile=null,address=null,occupation=null;

try
{
	id=request.getParameter("id");
Connection con=Dbconnection.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  user where id='"+id+"'");

while(rs.next())
{

	id=rs.getString("id");
	username=rs.getString("username");
	email=rs.getString("email");
	gender=rs.getString("Gender");
	dob=rs.getString("dob");
	mobile=rs.getString("mobile");
	 occupation=rs.getString("occupation");
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
    <form action="editprofile_action.jsp" method="post" target="_parent" />
     <div class="form-group">
     <input type="hidden" name="id" value="<%=id%>">
    <label style="margin-top:5px;">UserName</label>
     <input type="text" placeholder="Name" name="name" value="<%=username%>" class="form-control" required>
       </div>
        <div class="form-group">
              <label style="margin-top:5px;">Email</label>
      <input type="email" placeholder="Email" name="email" value="<%=email%>" class="form-control" required>
        </div>
         <div class="form-group">
        <label>Gender</label>
       <input type="text" name="gender"  checked="checked" value="<%=gender%>" class="form-control">
      </div>
       <div class="form-group">
        <label style="margin-top:5px;">Date of Birth</label>
       <input type="date" placeholder="date of birth" name="dob" value="<%=dob%>" class="form-control" required>
       </div>
				 <div class="form-group">
				<label style="margin-top:4px;">Mobile</label>
        <input type="text" placeholder="phone number" name="mobile" value="<%=mobile%>"  class="form-control" required>
        </div>
         <div class="form-group">
				<label style="margin-top:4px;">Occupation</label>
        <input type="text" placeholder="occupation" name="mobile" value="<%=occupation%>"  class="form-control" required>
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