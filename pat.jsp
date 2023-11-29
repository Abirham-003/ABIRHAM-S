<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{text-align:center;background-image:url("https://nhsbtdbe.blob.core.windows.net/umbraco-assets-corp/25124/blood-g4e28dcb97_1920.jpg");
}
.saaa{margin-top:30vh;background-color:rgba(120,120,120,0.5);width:60vh; height:30vh; margin-left:75vh;
border-radius:30px}
</style>
</head>
<body>
<div class='saaa'>
<br>
<h1>Welcome Admin</h1>
<form action='donarlist.jsp'>
<input type='submit' value='DONAR DETAILS'>
</form><br><br>
<form action='patientlist.jsp'>
<input type='submit' value='PATIENT DETAILS'>
</form>
</div>
</body>
</html>
