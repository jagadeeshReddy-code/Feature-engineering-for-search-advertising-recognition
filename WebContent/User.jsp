<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
        integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
             <style>
        .nav-item:hover {
            background-color: black;
        }
    </style>
<title>  FEATURE ENGINEERING FOR SEARCH  ADVERTISING RECOGNITION</title>
</head>
<body>
 <div>
        <header>
            <h1
                style="background-color: #EBF5FB;text-align: center;margin: 0%;padding: 30px; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;font-size: 50px;color: #1A5276">
               FEATURE ENGINEERING FOR SEARCH  ADVERTISING RECOGNITION</h1>
        </header>
    </div>
    <nav class=" navbar-inverse" style="background-color:rgb(44, 126, 194)">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar" style="font-size:18px;">
            <ul class="nav navbar-nav" role="tablist">
                <li class="nav-item"><a class="nav-link active" href="home.jsp" target="iframe"style="color: white">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="Search.jsp" target="iframe"
                        style="color: white" >SEARCH</a></li>    
                    <li class="nav-item"><a class="nav-link" href="viewaddsu.jsp" target="iframe"
                        style="color: white">VIEW ADVERTISMENT</a></li>      
                         <li class="nav-item"><a class="nav-link" href="vratingu.jsp" target="iframe"
                        style="color: white">VIEW RATING</a></li>
                          <li class="nav-item"><a class="nav-link" href="viewprofile.jsp" target="iframe"
                        style="color: white">VIEW PROFILE</a></li>
                          <li class="nav-item"><a class="nav-link" href="changepwrd.jsp" target="iframe"
                        style="color: white">RESET PASSWORD</a></li>
                        <li class="nav-item"><a class="nav-link" href="logout.jsp" style="color: white">LOGOUT</a></li>
                 
                
            </ul>
        </div>
    </nav>
    <iframe src="home.jsp" id="iframe" name="iframe" style="width: 100%;height: 450px;border: none"></iframe>
    <footer style="text-align: center;background-color:  rgb(44, 126, 194);color: white;padding: 10px">
        <h5>© 2021 All Rights Reserved</h5>
    </footer>
</body>
</html>