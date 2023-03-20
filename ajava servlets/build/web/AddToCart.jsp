<%-- 
    Document   : Cart
    Created on : 22 Feb, 2022, 11:35:57 PM
    Author     : jaini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp" %>
<%@include file = "Banner.jsp" %>

<%!
    int PID = 0;
    int quantity = 1;
    int shippingCharge,cartTotal,cartSubTotal = 0;
%>

<%
    if(request.getParameter("qty") !=  null)
        quantity = Integer.parseInt(request.getParameter("qty"));
    
    PID = Integer.parseInt(request.getParameter("PID"));
    
    if(cart.containsKey(PID))
    {
        cart.put(PID , quantity + cart.get(PID) );
        session.setAttribute("Cart",cart);
    }
    else
    {
        cart.put(PID,quantity);
        session.setAttribute("Cart",cart);    
    }
    
    totalProducts = totalProducts + quantity;
    session.setAttribute("totalProducts",totalProducts);
    totalAmount = totalAmount + (quantity * p.get(PID).getPrice() );
    session.setAttribute("totalAmount",totalAmount);
    
    response.sendRedirect("NewIndex.jsp?msg=successfully added to cart");
%>