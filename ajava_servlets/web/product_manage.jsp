<%-- 
    Document   : product_manage
    Created on : 4 Apr, 2022, 8:45:21 PM
    Author     : New
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>Product Manager</title></head>
    <body>
        <form method="get" action="product_change.jsp">
            <table>

<%
    int nextpid = 0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
    Statement stmt = con.createStatement();
%>


<%
    int op = Integer.parseInt(request.getParameter("op"));
    if(op == 1)
    {
        ResultSet rs = stmt.executeQuery("Select pid from product ORDER BY pid");
        while( rs.next() )
        {
            nextpid = rs.getInt(1);
        }
        nextpid = nextpid + 1;
%>
<tr>
    <td><label>Pid : </label></td>
    <td><input type="text" readonly="readonly" value="<%= nextpid %>" name="pid"></td>
</tr>
<tr>
    <td><label>Name : </label></td>
    <td><input type="text" name="name"></td>
</tr>
<tr>
    <td><label>Price : </label></td>
    <td><input type="text" name="price"></td>
</tr>
<tr>
    <td><label>Stock : </label></td>
    <td><input type="text" name="stock"></td>
</tr>
<tr>
    <td><label>Image Path : </label></td>
    <td><input type="text" name="image"></td>
</tr>
<tr>
    <td colspan="2"><input type="hidden" value="<%= op %>" name="op"><input type="submit" value="Add Product"></td>
</tr>

<%
    }
    else if(op == 2)
    {
        int pid = Integer.parseInt(request.getParameter("pid"));
        ResultSet rs = stmt.executeQuery("Select * from product WHERE pid = " + pid);
        rs.next();
        pid = rs.getInt(1);
        String name = rs.getString(2);
        int price = rs.getInt(3);
        int stock = rs.getInt(4);
        String image = rs.getString(5);
%>
<tr>
    <td><label>Pid : </label></td>
    <td><input type="text" readonly="readonly" value="<%= pid %>" name="pid"></td>
</tr>
<tr>
    <td><label>Name : </label></td>
    <td><input type="text" name="name" value="<%= name %>"></td>
</tr>
<tr>
    <td><label>Price : </label></td>
    <td><input type="text" name="price" value="<%= price %>"></td>
</tr>
<tr>
    <td><label>Stock : </label></td>
    <td><input type="text" name="stock" value="<%= stock %>"></td>
</tr>
<tr>
    <td><label>Image Path : </label></td>
    <td><input type="text" name="image"  value="<%= image %>"></td>
</tr>
<tr>
    <td colspan="2"><input type="hidden" value="<%= op %>" name="op"><input type="submit" value="Save Product"></td>
</tr>

<%
    }
    else
    {
        int pid = Integer.parseInt(request.getParameter("pid"));
        int rs = stmt.executeUpdate("DELETE FROM `product` WHERE pid = " + pid);
        application.setAttribute("edited",true);
        response.sendRedirect("product.jsp");
    }
%>
            </table>
        </form>
    </body>
</html>