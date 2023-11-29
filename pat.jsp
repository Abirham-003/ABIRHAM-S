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
<%-- <%
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
    
          
%> --%>

</body>
</html>