<%-- 
    Document   : BookingController
    Created on : 14 May, 2022, 11:14:01 PM
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

<%
    HashMap<Integer, Shop> ShopList = new HashMap<>();
    if(application.getAttribute("shops") != null)
    {
        ShopList = (HashMap<Integer, Shop>)application.getAttribute("shops");
    }
    else
    {
        ShopList = Shop.getShops();
        application.setAttribute("shops" , ShopList);
    }
    
    int id = Integer.parseInt(request.getParameter("id"));
    Shop s = ShopList.get(id);
    
    String slot = request.getParameter("slot");
    out.println(slot);

    
    if(slot.equals("5:30 PM TO 6:00 PM"))
    {
        if(s.isSlot1() == false)
        {
            s.setSlot1(true);
            application.setAttribute("shops" , ShopList);
            response.sendRedirect("DisplayShop.jsp?msgid=1");
        }
        else
        {
            response.sendRedirect("DisplayShop.jsp?msgid=2");
        }
    }


    else if(slot.equals("6:00 PM TO 6:30 PM"))
    {
        if(s.isSlot2() == false)
        {
            s.setSlot2(true);
            application.setAttribute("shops" , ShopList);
            response.sendRedirect("DisplayShop.jsp?msgid=1");
        }
        else
        {
            response.sendRedirect("DisplayShop.jsp?msgid=2");
        }
    }


    else if(slot.equals("6:30 PM TO 7:00 PM"))
    {
        if(s.isSlot3() == false)
        {
            s.setSlot3(true);
            application.setAttribute("shops" , ShopList);
            response.sendRedirect("DisplayShop.jsp?msgid=1");
        }
        else
        {
            response.sendRedirect("DisplayShop.jsp?msgid=2");
        }
    }

    
    else if(slot.equals("7:00 PM TO 7:30 PM"))
    {
        if(s.isSlot4() == false)
        {
            s.setSlot4(true);
            application.setAttribute("shops" , ShopList);
            response.sendRedirect("DisplayShop.jsp?msgid=1");
        }
        else
        {
            response.sendRedirect("DisplayShop.jsp?msgid=2");
        }
    }


    else if(slot.equals("7:30 PM TO 8:00 PM"))
    {
        if(s.isSlot5() == false)
        {
            s.setSlot5(true);
            application.setAttribute("shops" , ShopList);
            response.sendRedirect("DisplayShop.jsp?msgid=1");
        }
        else
        {
            response.sendRedirect("DisplayShop.jsp?msgid=2");
        }
    }
%>



    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
