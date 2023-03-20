<%-- 
    Document   : newjsp2
    Created on : 14 May, 2022, 11:51:23 PM
    Author     : New
--%>

<%@page import="Barber_shop.Shop"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            HashMap<Integer, Shop> ShopList = new HashMap<>();
            if (application.getAttribute("shops") != null) {
                ShopList = (HashMap<Integer, Shop>) application.getAttribute("shops");
            } else {
                ShopList = Shop.getShops();
                application.setAttribute("shops", ShopList);
            }
        %>
        <table>
            <tr>
                <th></th>
                <th>slot1</th>
                <th>slot2</th>
                <th>slot3</th>
                <th>slot4</th>
                <th>slot5</th>
            </tr>    
        <%
            for(int i = 0 ; i < ShopList.size() ; i++)
            {
                Shop s = ShopList.get(i);
                out.println("<tr>");
                out.println("<td>" + s.getName() +"</td>");
                out.println("<td>" + s.isSlot1() +"</td>");
                out.println("<td>" + s.isSlot2() +"</td>");
                out.println("<td>" + s.isSlot3() +"</td>");
                out.println("<td>" + s.isSlot4() +"</td>");
                out.println("<td>" + s.isSlot5() +"</td>");
                out.println("</tr>");
            }
        %>
        </table>
    </body>
</html>
