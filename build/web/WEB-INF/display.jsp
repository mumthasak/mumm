<%-- 
    Document   : display
    Created on : Oct 13, 2018, 12:36:02 PM
    Author     : HP
--%>
<%@page import="java.sql.*" %>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
           ResultSet r;
            ResultSetMetaData rs;
            int c,i;
            try
             {
             s=con.createStatement();
             q="Select *  from student_detailes;";
             r=s.executeQuery(q);
             rs=r.getMetaData();
             c=rs.getColumnCount();
             out.println("<table><tr><td>rollno</td><td>name</td><td>mark</td></tr>");
             while(r.next())
             {
                 out.println("<tr>");
                 for(i=1;i<=c;i++)
                     out.print("<td>"+r.getString(i)+"</td>");
                       out.println("</tr>");
                       
                            
                             
             }
             out.println("</table>");
             
            }
            catch(Exception e)
            {
              e.printStackTrace();
            }
           
            %>
       
    </body>
</html>
