<%-- 
    Document   : add
    Created on : Oct 12, 2018, 10:06:26 PM
    Author     : HP
--%>
<%@page import="java.sql.*"%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>auth</title>
    </head>
    <body>
        <% int rollno=Integer.parseInt(request.getParameter("rollno"));
        String name=request.getParameter("name");
        int mark=Integer.parseInt(request.getParameter("mark"));
        try{
            Class.forName("org.postgresql.Driver");
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/stud","postgres","mumthas");
        Statement s;
        String q;
        
        try
        {
            s=con.createStatement();
            q="INSERT INTO student_detailes VALUES("+rollno+",'"+name+"',"+mark+");";
            s.executeUpdate(q);
            response.sendRedirect("adminConsole.html");
            
                
                    
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
        %>
        
    </body>
</html>
