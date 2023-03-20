<%-- 
    Document   : RemoveFromCart
    Created on : 22 Mar, 2022, 1:02:37 PM
    Author     : New
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp" %>
<%@include file = "Banner.jsp" %>

<%
    int PID = Integer.parseInt(request.getParameter("PID"));
    totalAmount = totalAmount - (cart.get(PID) * p.get(PID).getPrice());
    totalProducts = totalProducts - cart.get(PID);
    cart.remove(PID);
    session.setAttribute("totalProducts",totalProducts);
    session.setAttribute("totalAmount",totalAmount);
    session.setAttribute("Cart",cart);
    response.sendRedirect("ViewCart.jsp");
%>