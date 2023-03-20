<%-- 
    Document   : assingment5
    Created on : 9 Feb, 2022, 5:20:35 PM
    Author     : jaini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>table generator Page</title>
    </head>
    <body>
        <form action = "tablegenerator.do" method = "post">
            <label for  = "tablenumberfield">Enter Table Number:</label>
            <input type = "text" name = "tableNumber" id = "tablenumberfield">
            <input type = "submit" value="Generate Table">
        </form>
    </body>
</html>
