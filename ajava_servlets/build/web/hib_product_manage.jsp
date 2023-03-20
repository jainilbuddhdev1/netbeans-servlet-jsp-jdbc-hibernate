<%-- 
    Document   : hib_product_manage
    Created on : 19 Apr, 2022, 1:50:49 PM
    Author     : New
--%>

<%@page import="java.util.*"%>
<%@page import="com.ce041.*"%>
<%@page import="org.hibernate.*"%>
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
//    Class.forName("com.mysql.jdbc.Driver");
//    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
//    Statement stmt = con.createStatement();
    Session s = NewHibernateUtil.getSessionFactory().openSession();
%>


<%
    int op = Integer.parseInt(request.getParameter("op"));
    if(op == 1)
    {
        String hql = "from Product ORDER BY pid";
        Query q = s.createQuery(hql);
        List<Product> products = q.list();
        for( Product p : products )
        {
            nextpid = p.getpid();
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
        String hql = "from Product p where p.pid = '" + pid + "'";
        Query q = s.createQuery(hql);
        List<Product> products = q.list();
        String name = new String();
        String image = new String();
        int stock = 0;
        int price = 0;
        for( Product p : products )
        {
            pid = p.getpid();
            name = p.getPname();
            price = p.getPrice();
            stock = p.getStock();
            image = p.getImage();
        }
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
        Transaction t = s.beginTransaction();
        Product p = (Product)s.get(Product.class , pid);
        s.delete(p);
        t.commit();
        application.setAttribute("edited",true);
        response.sendRedirect("Hibernate_Admin_Panel.jsp");
    }
%>
            </table>
        </form>
    </body>
</html>