<%-- 
    Document   : PlaceOrder.jsp
    Created on : 22 Mar, 2022, 1:43:13 PM
    Author     : New
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp" %>


<%
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
%>

<%
    cart.clear();
    totalAmount = 0;
    totalProducts = 0;
    session.setAttribute("Cart",cart);
    session.setAttribute("totalAmount",totalAmount);
    session.setAttribute("totalProducts",totalProducts);
    response.sendRedirect("NewIndex.jsp?msg=Order Placed successfully!!");
%>