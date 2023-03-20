<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BarberShop","root","");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from user");

    out.println("email");
    out.println("password" + "<br>");
    while(rs.next())
    {
        out.println(rs.getString(1));
        out.println(rs.getString(2) + "<br>");
    }
%>