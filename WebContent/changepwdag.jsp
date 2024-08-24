<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
String aname=session.getAttribute("aname").toString();
%>
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4"><br>
<form action="changepwdags.jsp" method="post">
<label>USER NAME:</label>&nbsp;&nbsp;<input type="text" name="f1" value="<%=aname%>"><br>
<label>New Password:</label><input type="password" name="f2"><br>
<input type="submit" value="ChangePswrd">&nbsp;&nbsp;<input type="reset" value="Cancel">
</form>
</div>
<div class="col-sm-4"></div>
</div>
</body>
</html>