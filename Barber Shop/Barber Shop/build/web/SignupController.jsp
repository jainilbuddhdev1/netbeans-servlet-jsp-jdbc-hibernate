<%-- 
    Document   : SignupController
    Created on : 2 Apr, 2022, 8:05:16 PM
    Author     : New
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--
    query to be executed
    INSERT INTO `user`(`email`, `password`) SELECT 'abca@abca.com','1231' WHERE NOT EXISTS(SELECT * FROM `user` WHERE email='abca@abca.com');
-->

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    //out.println(password);
    String cpassword = request.getParameter("confirmpassword");
    //out.println(cpassword);
    //out.println(password.equals(cpassword));
    
    
    if(password.equals(cpassword))
    {
        out.println("password == capssword");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbershop", "root", "");
        Statement stmt = con.createStatement();
        int b = stmt.executeUpdate("INSERT INTO `userdata`(`email`, `password`) SELECT '" + email + "','" + password + "' WHERE NOT EXISTS(SELECT * FROM `userdata` WHERE email='" + email + "')");
        System.out.println(b);
        if (b > 0)
        {
            response.sendRedirect("shoplist.html");
            session.setAttribute("email", email);
            session.setAttribute("password", password);
        }
        else
        {
            response.sendRedirect("Login.jsp?msg=Email is invalid/already used!!");
        }
    }
    else
    {
        response.sendRedirect("Login.jsp?msg=Password and Confirm password are not same!!");
    }
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
