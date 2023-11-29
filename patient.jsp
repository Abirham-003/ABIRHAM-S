<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{text-align:center;background-color:orange;
      background-repeat: no-repeat;background-size:cover;background-attachment:fixed;}
h1{color:red}
.dd{margin-top:5vh}
</style>
</head>
<body>
<br><br>
<h1>FETCH YOUR BLOOD HERE</h1>
<div class='dd'>
<form action='qwer.jsp' method='get'>
<br>
   Name:<br><input type='text' name='A' placeholder="ENTER USER NAME"  required><br><br>
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
   Age:<br><input type='text' name='C' placeholder="ENTER USER AGE"  required><br><br>
   Number:<br><input type='tel' name='D' placeholder="ENTER USER NUMBER"  required><br><br>
   Location:<br><input type='text' name='E' placeholder="ENTER USER LOCATION"  required><br><br>
   DeliveryDate:<br><input type="date" name='F' required><br><br>
   <input type="submit" value="Search">
   </form>
   </div>
</body>
</html>