<%-- 
    Document   : assignment4
    Created on : 8 Feb, 2022, 1:31:47 PM
    Author     : jaini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action = "helloworld.do" method = "post">
            <label for = "usernametextbox">Username:</label>
            <input type="text" name = "username" id = "usernametextbox">
            <br>
            <label for = "passwordfield">Password:</label>
            <input type="password" name = "password" id = "passwordfield">
            <br>
            <input type="submit">
            <br>
            <iframe src = "pagecounter.do" title="Page Counter"></iframe>
        </form>
    </body>
</html>
