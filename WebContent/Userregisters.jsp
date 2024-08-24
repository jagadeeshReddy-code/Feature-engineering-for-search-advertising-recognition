<%@page import="java.security.SecureRandom"%>
<%@page import="Action.Email"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.Random"%>
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

String id=null,username=null,password=null,gender=null,email=null,mobile=null,dob=null,occupation=null,address=null;

try {
	DiskFileItemFactory factory=new DiskFileItemFactory();
	ServletFileUpload sfu=new ServletFileUpload(factory);
if(!ServletFileUpload.isMultipartContent(request))
{
	System.out.println("Sorry. No Image Uploaded");
	return;
}

List items = sfu.parseRequest(request);

FileItem fc1 = (FileItem) items.get(0);
   id= fc1.getString();

FileItem fc2 = (FileItem) items.get(1);
 username= fc2.getString();
 
 
FileItem fc3 = (FileItem) items.get(2);
 password= fc3.getString();
 
 FileItem fc4 = (FileItem) items.get(3);
 gender= fc4.getString();
 
 FileItem fc5 = (FileItem) items.get(4);
  email= fc5.getString();
            
  FileItem fc6 = (FileItem) items.get(5);
  mobile= fc6.getString();
    
 FileItem fc7 = (FileItem) items.get(6);
   dob= fc7.getString();
      
  FileItem fc8 = (FileItem) items.get(7);
      occupation= fc8.getString();
          
 FileItem fc9= (FileItem) items.get(8);
          address= fc9.getString();
          
 FileItem fc10 = (FileItem) items.get(9);
        
 

 int km=0;
 
 
 Random RANDOM = new SecureRandom();
 int PASSWORD_LENGTH = 8;
 String letters = "0123456789";
 String otp = "";
 for (int i = 0; i < PASSWORD_LENGTH; i++) {
     int index = (int) (RANDOM.nextDouble() * letters.length());
     otp += letters.substring(index, index + 1);
 }


     String msggg = "You have Register in FEATURE ENGINEERING FOR SEARCH  ADVERTISING RECOGNITION. Your   Username:"+username+" and Password:"+password+". This is your security Key 8 digit: " +otp ;
     Email ma = new Email();
     ma.sendMail("FEATURE ENGINEERING FOR SEARCH  ADVERTISING RECOGNITION",msggg, email);

 Connection con=Dbconnection.getConnection();
 	PreparedStatement ps2 = con.prepareStatement("insert into user (username,password,gender,email,mobile,dob,occupation,address,image) values(?,?,?,?,?,?,?,?,?)");
 	 System.out.println(ps2);
 	
 	ps2.setString(1, username);
 	ps2.setString(2, password);
	ps2.setString(3, gender);
	ps2.setString(4, email);
	ps2.setString(5,mobile);
	ps2.setString(6, dob);
	ps2.setString(7, occupation);
	ps2.setString(8,address);
	ps2.setBinaryStream(9, fc10.getInputStream(), (int) fc10.getSize());
	int i=ps2.executeUpdate();
	if(i>0)
	{
		
		
	out.print("insert  success");
	System.out.println("INSERT SUCCESS");
	response.sendRedirect("index.jsp");
	}
	else{
		out.print("try once more");
	}
}
catch(Exception e){
  out.println(e);	

}
%>

</body>
</html>