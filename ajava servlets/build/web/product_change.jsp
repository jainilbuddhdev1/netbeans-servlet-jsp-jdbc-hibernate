<%-- 
    Document   : newjsp
    Created on : 17 Mar, 2022, 11:32:48 PM
    Author     : New
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    int pid = Integer.parseInt(request.getParameter("pid"));
    String name = request.getParameter("name");
    int price = Integer.parseInt(request.getParameter("price"));
    int stock = Integer.parseInt(request.getParameter("stock"));
    String image = request.getParameter("image");
    String image1 = request.getParameter("image");
    int op = Integer.parseInt(request.getParameter("op"));
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
    Statement stmt = con.createStatement();
%>
<%
    if( op == 1)
    {
        int changed = stmt.executeUpdate("INSERT INTO `Product`(`pid` , `name` , `price` , `stock` , `image`) VALUES ('" + pid + "','" + name + "','" + price + "','" + stock + "','" + image + "')" );
        response.sendRedirect("product.jsp");
    }
    else if(op == 2)
    {
        int added = stmt.executeUpdate("UPDATE `product` SET `name`='" + name + "',`price`='" + price + "',`stock`='" + stock + "',`image`='" + image + "' WHERE pid = "+ pid);
        response.sendRedirect("product.jsp");
    }
%>