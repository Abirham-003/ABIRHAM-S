<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{backgroung-color:red;
  text-align:center}
</style>
</head>
<body>

<% String name=request.getParameter("A");
   String Bloodgroup=request.getParameter("B");
   String Age=request.getParameter("C");
   String Number=request.getParameter("D");
   String Location=request.getParameter("E");
   LocalDate date=LocalDate.now();
      
  
	  Class.forName("com.mysql.cj.jdbc.Driver");
	   
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/groot","root","grooot");
		          java.sql.Statement st= con.createStatement();
   String query="insert into blood values('"+name+"','"+Bloodgroup+"','"+Age+"','"+Number+"','"+Location+"','"+date+"')";
   int A=st.executeUpdate(query);
   if(A>0){
	   out.print("Thank for donating");
	 out.print("<br><br>"+"kindly donate blood after 3 months");
   }
   else{
	   out.print("failed");
   }     
%>
 <br><br>
  <form action="loginbd.jsp">
<input type='submit' value='EXIT'>
</form>
</body>
</html>