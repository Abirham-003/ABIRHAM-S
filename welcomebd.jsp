<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{text-align:center;background-color:black;opacity:0.9}
.now{background-color:white; border-radius:30px; width:80vh; height:50vh; margin-left:70vh;
 margin-top:10vh;padding-top:10vh}
h1{color:red;font-size:5vh}
a{font-size:5vh;text-decoration:none;background-color:black;color:white}
</style>
</head>
<body>
<br><br><BR>
<div class='now'>
<h1>BLOOD DONATION</h1>
<br>
<form action='blood.jsp'>
<input type='submit' value='DONAR' style="color:red;font-size:5vh;">
</form><br><br>
<form action='patient.jsp'>
<input type='submit' value='PATIENT' style="color:red;font-size:5vh;">
</form>
</div>
</body>
</html>