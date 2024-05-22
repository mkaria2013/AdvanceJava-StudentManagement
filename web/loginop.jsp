<%-- 
    Document   : loginop
    Created on : Mar 29, 2017, 11:36:17 PM
    Author     : N
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="100%">
            <tr height="100px">
                <td colspan="4" align="center"><h1><b>Student Admission</b></h1></td></tr>
            <tr height="50px" align="center">
            <tr height="500px" align="center"><td colspan="4">
            
                     <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
          
               String uname=request.getParameter("lgnm");
        String pass=request.getParameter("pwd");
                
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/school","root","");

        
             st = c1.createStatement();
             q="select * from user where username='"+uname+"' and password='"+pass+"'";
             rs1=st.executeQuery(q);
             if(rs1.next())
             {
                    out.println("Welcome, </b>");
                    out.print(" "+uname+"</b><br>");
                    
                    
                    out.println("<a href='index.jsp'>Click Here to Continue..</a>");
             }
              }
             catch(Exception e)
             {
                    out.println(e);
             }
            
   %>
                    </td>
            </tr>
        </table>
    </body>
</html>
