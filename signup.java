package DEMO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{   String username= request.getParameter("A");
	 String email= request.getParameter("B");
     String password=request.getParameter("C");
     
     PrintWriter wt=response.getWriter();
    response.setContentType("text/html");
     try {
    	 Class.forName("com.mysql.cj.jdbc.Driver");
   
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/groot","root","grooot");
	          java.sql.Statement st= con.createStatement();
             String query="insert into user values('"+username+"','"+email+"','"+password+"')";
             int in=st.executeUpdate(query);
             if(in>0) {
            	 wt.print("oke>>>>>>>done");
             }
             else {
            	 wt.print("failed successfully>>>>>>>>>");
             }
    	 
     }
     catch(ClassNotFoundException aa) {
    	 
     }
	 catch(SQLException sq) {
		 
	 }
	}

}
