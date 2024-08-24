 <%@page import="java.sql.*"%>
<%@page import="Action.Dbconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
function uploadvalidate()
{

	if(document.form1.category.value==""||document.form1.property.value==""||document.form1.brand.value==""||document.form1.city.value==""||document.form1.price.value=="")
	{
		alert("All The Fields Muste Be Entered");
		return false;
	}
	else
	{
		return true;
	}
	
}

</script>
</head>


<body>
 <%
String u=null;int u2=0,u1=0;
try
{
Connection con=Dbconnection.getConnection();
PreparedStatement ps=con.prepareStatement("select * from upload");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
u=rs.getString("id");
}
if(u==null)
{
 u2=u1+1;
}
else
{
u1=Integer.parseInt(u);
u2=u1+1;
}
String u3=Integer.toString(u2);

%> 
            <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-6">
                <h1>UPLOAD ADDS</h1>
            </div>
            <div class="col-sm-2"></div>
        </div>
 <form name="form1" action="Uploadadds.jsp" method="post"  enctype="multipart/form-data"  target="_parent">
	<div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">ID:</label></div>
     <div class="col-sm-3"><input type="text"  name="id"  value="<%=u3%>" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
	

	<div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Category Name</label></div> 
     <div class="col-sm-3"><select  class="input-field" name="cname">
    <option value="select">---select---</option>
    <option  value="education">EDUCATION</option>
    <option  value="marketing">MARKETING</option>
    <option  value="vehicles">VEHICLES</option>
    </select></div>
        <div class="col-sm-4"></div>
    </div><br>
	
		<div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">Property</label></div>
     <div class="col-sm-3"><input type="text" placeholder="Property" name="property" class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
  <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">BRAND</label></div>
     <div class="col-sm-3"> <input type="text" placeholder="BRAND" name="brand"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    	
  <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">PRICE</label></div>
     <div class="col-sm-3"> <input type="text" placeholder="price" name="price"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1"><label style="margin-top:5px;">CITY</label></div>
       <div class="col-sm-3"><input type="text" placeholder="CITY" name="city"  class="form-control" required></div>
        <div class="col-sm-4"></div>
    </div><br>
      <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-1">  <label style="margin-top:2px;">Image</label></div>
         <div class="col-sm-4">  <input type="file" name="image" class="form-control"> </div>
        <div class="col-sm-3"></div>
    </div><br>
	
	 <div class="row">
        <div class="col-sm-5"></div>
        <div class="col-sm-4"><input type="submit"  class="btn btn-primary" value="Upload" onclick="return uploadvalidate()"> <input type="reset"  class="btn btn-primary" value="Cancel"></div>
        <div class="col-sm-3"></div>
    </div><br>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>

</form>
</body>
</html>