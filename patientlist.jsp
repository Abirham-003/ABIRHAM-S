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
body{background-image:url("https://i0.wp.com/medika.life/wp-content/uploads/2020/07/Circulatory-System.jpg?w=696&ssl=1");
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
          String query1="select * from patients " ;
          ResultSet A1=st.executeQuery(query1);
          out.print("<h1>"+"PATIENTS"+"</h1>");
          out.print("<table border=1px>");
           out.print("<tr>");
           out.print("<th>"+"Name"+"</th>");
           out.print("<th>"+"Bloodgroup"+"</th>");
           out.print("<th>"+"Number"+"</th>");
           out.print("<th>"+"Location"+"</th>");
           out.print("</tr>");
    while(A1.next()){
    	  out.print("<tr>");
    	   out.print("<td>"+A1.getString("Name")+"</td>");
    	   out.print("<td>"+A1.getString("bloodgroup")+"</td>");
    	   out.print("<td>"+A1.getString("number")+"</td>");
    	   out.print("<td>"+A1.getString("location")+"</td>");
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