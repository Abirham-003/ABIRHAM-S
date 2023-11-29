<%@page import="java.time.LocalDate"%>
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
body{background-image:url("https://images.everydayhealth.com/images/healthy-living/10-things-doctor-wont-tell-about-blood-tests-722x406.jpg?sfvrsn=2a28fe7d_0");
background-repeat: no-repeat;background-size:cover;background-attachment:fixed;}
th{color:red;width:170px;}
td{color:white}
h1{text-align:center;margin-top:30vh;color:white}
table{margin-left:50vh;border-color:white}
</style>
</head>
<body>
<%
String name=request.getParameter("A");
String Bloodgroup=request.getParameter("B");
String Age=request.getParameter("C");
String Number=request.getParameter("D");
String Location=request.getParameter("E");
LocalDate date=LocalDate.now();
String DeliveryDate=request.getParameter("F");
   
	Class.forName("com.mysql.cj.jdbc.Driver");
	   
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/groot","root","grooot");
	          java.sql.Statement st= con.createStatement();
 String query1="insert into patients values('"+name+"','"+Bloodgroup+"','"+Age+"','"+Number+"','"+Location+"','"+date+"','"+DeliveryDate+"')" ;
    int B=st.executeUpdate(query1);
    if(B>0){
    	
   String query="select * from blood where bloodgroup='"+Bloodgroup+"' and location='"+Location+"'" ;
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
}
    else{
    	out.print("not inserted");
    }
%>
<br><br>
<form action="loginbd.jsp" style="text-align:center">
<input type='submit' value='GO BACK'>
</form>
</body>
</html>