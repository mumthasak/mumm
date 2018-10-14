<%-- 
    Document   : delete
    Created on : Oct 13, 2018, 9:43:23 AM
    Author     : HP
--%>
<%@page import="java.sql.*"%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auth</title>
    </head>
    <body>
        <%
            int rollno=Integer.parseInt(request.getParameter("rollno"));
            try
            {
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
              q="DELETE FROM student_detailes WHERE rollno='"+rollno+"';";
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
