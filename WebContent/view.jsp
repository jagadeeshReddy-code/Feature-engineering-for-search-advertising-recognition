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
String id=null,category=null,property=null,price=null,brand=null,city=null;

try
{
	id=request.getParameter("id");
Connection con=Dbconnection.getConnection();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from  upload where id='"+id+"'");

if(rs.next())
{

	 id=rs.getString("id");
	 category=rs.getString("category");   
	 property=rs.getString("property");
     brand=rs.getString("brand");
     price=rs.getString("price");
	 city=rs.getString("city");
     




%>
<div class="row"> 
 
        
           <div class="col-sm-4"></div>
    <div class="col-sm-4">
    <h3>VIEW  DETAILS</h3>
    <form action="views.jsp" method="post" target="_parent" />
        <div class="form-group">
       <img src="dimage.jsp?id=<%=id%>" width="100px" height="50px">
    </div>
     <div class="form-group">
     <input type="hidden" name="id" value="<%=id%>">
    <label style="margin-top:5px;">CATEGORY</label>
     <input type="text" placeholder="CATEGORY" name="category" value="<%=category%>" class="form-control" required>
       </div>
          <div class="form-group">
              <label style="margin-top:5px;">PROPERTY</label>
      <input type="text" placeholder="PROPERTY" name="property" value="<%=property%>" class="form-control" required>
        </div>
        <div class="form-group">
              <label style="margin-top:5px;">BRAND</label>
      <input type="text" placeholder="BRAND" name="brand" value="<%=brand%>" class="form-control" required>
        </div>
				 <div class="form-group">
				<label style="margin-top:4px;">Price</label>
        <input type="text" placeholder="Price" name="price" value="<%=price%>"  class="form-control" required>
        </div>
         <div class="form-group">
				<label style="margin-top:4px;">CITY</label>
        <input type="text" placeholder="CITY" name="city" value="<%=city%>"  class="form-control" required>
        </div>
         <div class="form-group">
       <label style="margin-top:2px;">Review</label>
        <input type="text" placeholder="Review" name="review" class="form-control" required>
       </div>
        
  <div class="form-group">
  <label style="margin-top:2px;">Rating</label>
 <div class="input-container">
    <i class="fa fa-user icon"></i>
    <select  class="input-field" name="rating">
    <option value="rating">---select---</option>
    <option  value="1">1</option>
    <option  value="2">2</option>
    <option  value="3">3</option>
     <option  value="4">4</option>
    <option  value="5">5</option>
    </select>
  </div>
  </div>
       <input type="submit"  class="btn btn-primary" value="ADD REVIEW"> <input type="reset"  class="btn btn-primary" value="Cancel">
    </form>
     
    </div>
    </div>
</body>
<%
}}
catch(Exception e){
	e.printStackTrace();
}

%>
</html>