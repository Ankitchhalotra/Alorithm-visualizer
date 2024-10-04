<%-- 
    Document   : ChangePassword
    Created on : 11-Jan-2024, 5:44:30 pm
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
    ArrayList al=(ArrayList) session.getAttribute("details");
        %>
        <h1> <%= al.get(0) %> </h1>
        <h1>
            <form action="ChangePassword.jsp">
            <input type="text" placeholder="Enter your current password" name="pass">
            <input type="text" placeholder="Enter your new password" name="npass">
            <input type="submit" value="submit" >
            </form>
        </h1>
        
<!--        
   ArrayList al = new ArrayList();
    al=(ArrayList) session.getAttribute("details");
    String pass = request.getParameter("pass");
    String newpass = request.getParameter("npass");
    String email = (String)al.get(7);
     try{
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/algoVisulizer","root","root");
     String sql ="update UserDetails set Password=? where Password=? and Email=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, newpass);
    ps.setString(2, pass);
    ps.setString(3, email);
   int i =ps.executeUpdate();
   if(i>0){
   response.sendRedirect("Home.jsp");
    }
    
    }
    catch(Exception e){
    
    }

 -->
    </body>
</html>
