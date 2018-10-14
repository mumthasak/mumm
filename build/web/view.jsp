

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
            
            
            Connection con;
            Statement st;
            ResultSet rs;
           
            try{
               Class.forName("org.postgresql.Driver");
               con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/stud","postgres","mumthas");
               st=con.createStatement();
              rs= st.executeQuery("select * from student_users ");
              %>
              <table border="1">
                      <thead>
                      <tr>
                      <td>username</td>
                      <td>pass</td>
                              </tr>
                              </thead>
                              
                              <% while(rs.next()){%>
                               <tr>
                      <td><%out.println(rs.getString(1));%></td>
                      <td><%out.println(rs.getString(2));%></td>
                      
                              </tr>
                           <%} %>
              </table>
            <%}catch(Exception e){}
            
            %> 
    </body>
</html>    