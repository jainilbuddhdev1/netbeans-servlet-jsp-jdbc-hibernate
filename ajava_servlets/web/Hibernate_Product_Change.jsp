<%-- 
    Document   : Hibernate_Product_Change
    Created on : 22 Apr, 2022, 8:50:54 PM
    Author     : New
--%>

<%@page import="com.ce041.*"%>
<%@page import="org.hibernate.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    int pid = Integer.parseInt(request.getParameter("pid"));
    String name = request.getParameter("name");
    int price = Integer.parseInt(request.getParameter("price"));
    int stock = Integer.parseInt(request.getParameter("stock"));
    String image = request.getParameter("image");
    int op = Integer.parseInt(request.getParameter("op"));
    
//    Class.forName("com.mysql.jdbc.Driver");
//    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
//    Statement stmt = con.createStatement();
    Session s = NewHibernateUtil.getSessionFactory().openSession();
    Transaction t = s.beginTransaction();
%>
<%
    if( op == 1)
    {
        //int changed = stmt.executeUpdate("INSERT INTO `Product`(`pid` , `name` , `price` , `stock` , `image`) VALUES ('" + pid + "','" + name + "','" + price + "','" + stock + "','" + image + "')" );
        
        Product p = new Product(pid , name , price , stock , image);
        s.saveOrUpdate(p);
        t.commit();
        
        application.setAttribute("edited",true);
        response.sendRedirect("product.jsp");
    }
    else if(op == 2)
    {
        //int added = stmt.executeUpdate("UPDATE `product` SET `name`='" + name + "',`price`='" + price + "',`stock`='" + stock + "',`image`='" + image + "' WHERE pid = "+ pid);
        Product p = (Product)s.get(Product.class, pid);
        //Product p = new Product(pid , name , price , stock , image);
        s.saveOrUpdate(p);
        t.commit();
        
        application.setAttribute("edited",true);
        response.sendRedirect("product.jsp");
    }
%>