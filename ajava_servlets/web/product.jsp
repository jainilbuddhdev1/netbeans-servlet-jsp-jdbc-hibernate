<%-- 
    Document   : product
    Created on : 29 Mar, 2022, 12:17:23 PM
    Author     : New
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String searchby = new String();
    String operator = new String();
    String value = new String();
    if(request.getParameter("searchby") != null)
    {
        searchby = request.getParameter("searchby");
        operator = request.getParameter("operator");
        value = request.getParameter("value");
        out.println(searchby);
        out.println(operator);
        out.println(value);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="product.jsp" method="post">
            <label>Search By:</label>
            <select name="searchby">
                <option name="pid">pid</option>
                <option name="name">name</option>
                <option name="price">price</option>
                <option name="stock">stock</option>
                <option name="image">image path</option>
            </select>
            <select name="operator">
                <option name="eq">=</option>
                <option name="ge">>=</option>
                <option name="gt">></option>
                <option name="le"><=</option>
                <option name="lt"><</option>
                <option name="like">like</option>
            </select>
            <input type="text" name="value">
            <input type="submit" value="Search">
        </form>
        <a href="product.jsp">Clear Filters</a>
        <br><br>
        <button onclick = location.href='product_manage.jsp?op=1'>Insert New Product</button>
        <br><br>
        <table border = 1>
            <tr>
                <th>pid</th>
                <th>name</th>
                <th>price</th>
                <th>stock</th>
                <th>image path</th>
                <th>Edit Product</th>
                <th>Delete Product</th>
            </tr>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
            Statement stmt = con.createStatement();
        %>
        <%
            if(request.getParameter("value") == null)
            {
                ResultSet rs = stmt.executeQuery("select * from product");
                
                int srno = 1;
                while(rs.next())
                {
                    out.println("<tr>");
                    int pid = rs.getInt(1);
                    out.println("<td>" + pid + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getInt(3) + "</td>");
                    out.println("<td>" + rs.getInt(4) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td align=center>" + "<a href = product_manage.jsp?op=2&pid="+ pid +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = product_manage.jsp?op=3&pid="+ pid +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
            else if(operator.equals("like"))
            {
                ResultSet rs = stmt.executeQuery("select * from product where " + searchby + " " + operator + " '%" + value + "%'   ");
                int srno = 1;
                while(rs.next())
                {
                    out.println("<tr>");
                    int pid = rs.getInt(1);
                    out.println("<td>" + pid + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getInt(3) + "</td>");
                    out.println("<td>" + rs.getInt(4) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td align=center>" + "<a href = product_manage.jsp?op=2&pid="+ pid +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = product_manage.jsp?op=3&pid="+ pid +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
            else
            {
                ResultSet rs = stmt.executeQuery("select * from product where " + searchby + operator + "'" + value + "'");
                int srno = 1;
                while(rs.next())
                {
                    out.println("<tr>");
                    int pid = rs.getInt(1);
                    out.println("<td>" + pid + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getInt(3) + "</td>");
                    out.println("<td>" + rs.getInt(4) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td align=center>" + "<a href = product_manage.jsp?op=2&pid="+ pid +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = product_manage.jsp?op=3&pid="+ pid +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
        %>
        
        </table>
    </body>
</html>
