<%-- 
    Document   : checkout
    Created on : 22 Mar, 2022, 12:42:27 PM
    Author     : New
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out</title>
    </head>
    <body>
        <form action="PlaceOrder.jsp" method="post">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name = "name" required></td>
                </tr>

                <tr>
                    <td>Address: </td>
                    <td><textarea name="address" required></textarea></td>
                </tr>

                <tr>
                    <td>Mobile Number: </td>
                    <td><input type="text" name="mobile" required></td>
                </tr>

                <tr>
                    <td colspan = 2><input type = "submit" class = "add_to_cart_button" value="Place Order"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
