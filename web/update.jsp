<%-- 
    Document   : up
    Created on : Jun 19, 2018, 1:06:30 PM
    Author     : HP
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            String username=request.getParameter("user");
            String password=request.getParameter("pass");
            
            Connection con;
            Statement s;
           
            try{
               Class.forName("org.postgresql.Driver");
               con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/stud","postgres","mumthas");
               s=con.createStatement();
               s.executeUpdate(" update student_users set password='"+password+"' where username='"+username+"';");
              
               out.println("updated successfully");
            }catch(Exception e){}
            
            %> 
    </body>
</html>
