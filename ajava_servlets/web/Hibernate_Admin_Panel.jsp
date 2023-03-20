<%-- 
    Document   : Hibernate_Admin_Panel
    Created on : 19 Apr, 2022, 12:44:37 PM
    Author     : New
--%>


<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="com.ce041.Product"%>
<%@page import="org.hibernate.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "com.ce041.NewHibernateUtil"%>

<!DOCTYPE html>

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


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hibernate Admin Panel</title>
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
            Session s = NewHibernateUtil.getSessionFactory().openSession();
        %>
        <%
            if(request.getParameter("value") == null)
            {
                String hql = "from Product";
                Query q = s.createQuery(hql);
                List<Product> products = q.list();
                for(Product p : products)
                {
                    out.println("<tr>");
                    out.println("<td>" + p.getpid() + "</td>");
                    out.println("<td>" + p.getPname() + "</td>");
                    out.println("<td>" + p.getPrice() + "</td>");
                    out.println("<td>" + p.getStock() + "</td>");
                    out.println("<td>" + p.getImage() + "</td>");
                    out.println("<td align=center>" + "<a href = hib_product_manage.jsp?op=2&pid="+ p.getpid() +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = hib_product_manage.jsp?op=3&pid="+ p.getpid() +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
            else if(operator.equals("like"))
            {
                //ResultSet rs = stmt.executeQuery("select * from product where " + searchby + " " + operator + " '%" + value + "%'   ");
                String hql = "from Product where " + searchby + " " + operator + " '%" + value + "%'";
                Query q = s.createQuery(hql);
                List<Product> products = q.list();
                for(Product p : products)
                {
                    out.println("<tr>");
                    out.println("<td>" + p.getpid() + "</td>");
                    out.println("<td>" + p.getPname() + "</td>");
                    out.println("<td>" + p.getPrice() + "</td>");
                    out.println("<td>" + p.getStock() + "</td>");
                    out.println("<td>" + p.getImage() + "</td>");
                    out.println("<td align=center>" + "<a href = hib_product_manage.jsp?op=2&pid="+ p.getpid() +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = hib_product_manage.jsp?op=3&pid="+ p.getpid() +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
            else
            {
                //ResultSet rs = stmt.executeQuery("select * from product where " + searchby + operator + "'" + value + "'");
                String hql = "from Product where " + searchby + " " + operator + "'" +value + "'";
                Query q = s.createQuery(hql);
                List<Product> products = q.list();
                for(Product p : products)
                {
                    out.println("<tr>");
                    out.println("<td>" + p.getpid() + "</td>");
                    out.println("<td>" + p.getPname() + "</td>");
                    out.println("<td>" + p.getPrice() + "</td>");
                    out.println("<td>" + p.getStock() + "</td>");
                    out.println("<td>" + p.getImage() + "</td>");
                    out.println("<td align=center>" + "<a href = hib_product_manage.jsp?op=2&pid="+ p.getpid() +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = hib_product_manage.jsp?op=3&pid="+ p.getpid() +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
        %>
    </body>
</html>
