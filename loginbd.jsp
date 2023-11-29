<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{text-align:center;
      background-image:url("https://wallpapercave.com/wp/wp10938740.png");
     background-repeat: no-repeat;background-size:cover;background-attachment:fixed;
     margin-top:20vh }
 a{text-decoration:none;background-color:black;color:white}
 
</style>
</head>
<body>
<h1 style="color:white;">WELCOME TO BLOOD BANK!@!</h1>
<br><br>
<h1>!LOGIN!</h1>
<br>
<form  action='pat.jsp'>
USER :<br> <select id="user" name='A'>
<option value='ADMIN' >ADMIN</option>
</select><br><br>
PASSWORD:<br><input type='password' name='B'>
<br><br>
<input type='submit' value='submit'>
</form>
<br><br>
<form action="welcomebd.jsp">
<input type="submit" value="Blood-Donation">
</form>
<!-- <a href='welcomebd.jsp'>BLOOD DONATION</a>-->
</body>
</html>