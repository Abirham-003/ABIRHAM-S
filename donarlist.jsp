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
body{background-image:url("https://img.freepik.com/free-vector/halloween-background-with-blood-splatters-drips_1048-16876.jpg?w=740&t=st=1700551679~exp=1700552279~hmac=1a450a380569129a44e13edce895cbc321ff065f3bf4433a808a027441431e5d");
background-repeat: no-repeat;background-size:cover;background-attachment:fixed;}
th{color:red;width:170px;}
td{color:white}
h1{text-align:center;margin-top:30vh;color:white}
table{margin-left:50vh;border-color:white}
</style>
</head>
<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");   
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/groot","root","grooot");
          java.sql.Statement st= con.createStatement();
          String query="select * from blood " ;
          ResultSet A=st.executeQuery(query);
               out.print("<table border=1px>");
               out.print("<h1>"+"DONAR"+"</h1>");
               out.print("<tr>");
               out.print("<th>"+"Name"+"</th>");
               out.print("<th>"+"Bloodgroup"+"</th>");
               out.print("<th>"+"Number"+"</th>");
               out.print("<th>"+"Location"+"</th>");
               out.print("</tr>");
        while(A.next()){
        	  out.print("<tr>");
        	   out.print("<td>"+A.getString("Name")+"</td>");
        	   out.print("<td>"+A.getString("bloodgroup")+"</td>");
        	   out.print("<td>"+A.getString("number")+"</td>");
        	   out.print("<td>"+A.getString("location")+"</td>");
        	   out.print("</tr>");
        	   
        	  
        }
        out.print("</table>");
%>
<br><br>
<form action="pat.jsp" style='text-align:center'>
<input type='submit' value='GO BACK'>
</form>
</body>
</html>