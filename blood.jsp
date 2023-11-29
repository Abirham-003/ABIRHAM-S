<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{text-align:center;margin-top:50px;margin-right:110px;
  background-image:url("https://slidechef.net/wp-content/uploads/2023/01/Blood-Transfusion-Presentation.jpg")}
 h1{color:white} 
</style>
</head>
<body>
<form action='asdf.jsp' method='post'>
<br>
<h1>!!!WELCOME DONARS!!!</h1>
<br>
   Name:<br><input type='text' name='A' placeholder="ENTER USER NAME" required><br><br>
   Blood group:<br><select id='bldgrp' name='B' required>
   <option value='A+'>A+</option>
   <option value='A+'>A-</option>
   <option value='B+'>B+</option>
   <option value='A+'>B-</option>
   <option value='O+'>O+</option>
   <option value='A+'>O-</option>
   <option value='AB+'>AB+</option>
   <option value='AB-'>AB-</option></select>
   <br><br>
   Age:<br><input type='text' name='C' placeholder="ENTER AGE" required><br><br>
   Number:<br><input type='tel' name='D'   placeholder="ENTER USER NUMBER" required><br><br>
   Location:<br><input type='text' name='E' placeholder="ENTER USER LOCATION" required><br><br>
   <input type="submit" value="submit">
   </form>
</body>
</html>