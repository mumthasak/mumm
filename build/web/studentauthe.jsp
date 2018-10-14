<%-- 
    Document   : studentauthe
    Created on : Oct 12, 2018, 10:44:26 AM
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
            String username=request.getParameter("user");
            String password=request.getParameter("pass");
            session.setAttribute("user", username);
            try{
                Class.forName("org.postgresql.Driver");
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/stud","postgres","mumthas");
            Statement s;
            ResultSet r;
            String q;
            try{
                s=con.createStatement();
                q="Select * from student_users where username='"+username+"' and password='"+password+"';";
                r=s.executeQuery(q);
                int c=0;
                while(r.next())
                {
                   c++;
                   
                }
                if(c>0)
                {response.sendRedirect("studentConsole.html");
                  return;
                }
                else
                {
                   response.sendRedirect("fail.html");
                   return;
                   
                }
                
            }
                catch(Exception e)
                {e.printStackTrace();
                
                }
          
            %>
    </body>
</html>



  
