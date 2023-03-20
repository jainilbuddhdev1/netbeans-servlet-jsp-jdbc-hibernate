<%-- 
    Document   : newjsp
    Created on : 2 Apr, 2022, 7:58:40 PM
    Author     : New
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String email = (String)session.getAttribute("email");
    if(request.getParameter("msg") != null)
    {
        out.println(request.getParameter("msg"));
    }
    out.println("Hello email : " + email);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
