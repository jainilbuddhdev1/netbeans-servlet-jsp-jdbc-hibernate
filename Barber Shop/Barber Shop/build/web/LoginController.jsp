<%-- 
    Document   : LoginController
    Created on : 25 Mar, 2022, 11:39:01 AM
    Author     : New
--%>

<%@page contentType="html/text" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.*" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String dbpassword = new String();
%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/barbershop","root","");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM user WHERE email = '" + email + "' AND EXISTS(SELECT * FROM user WHERE email = '" + email + "' )");
    while(rs.next())
    {
        System.out.println(rs.getString(1));
        dbpassword = rs.getString(2);
        System.out.println(rs.getString(2));
    }
    System.out.println("password: " + password + "  dbpassword: " + dbpassword);
%>

<%
    if( password.equals(dbpassword) )
    {
        out.print("Welcome " + email);
        response.sendRedirect("DisplayShop.jsp");
        session.setAttribute("email", email);
        session.setAttribute("password", password);
    }
    else{
        response.sendRedirect("NewLogin.jsp?msg=Invalid email address or password.Please Try Again!!");
    }
%>

