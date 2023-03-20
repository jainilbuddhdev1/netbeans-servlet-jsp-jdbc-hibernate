<%-- 
    Document   : DisplayShop
    Created on : 13 May, 2022, 10:56:07 AM
    Author     : viraj
--%>
<%@page import="java.util.HashMap"%>
<
<%@page import="Barber_shop.Shop" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HashMap<Integer, Shop> shopList = Shop.getShops();
    if(request.getParameter("msgid") != null)
    {
        int msgid = Integer.parseInt(request.getParameter("msgid"));
        if(msgid == 1)
        {
            %>
            <script>
                alert("Your Slot Has been Booked Successfully");
            </script>
            <%
        }
        else if(msgid == 2)
        {
            %>
            <script>
                alert("Slot has already been Booked!! Please try in another slot");
            </script>
            <%
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shop List</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="DisplayShop.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400&display=swap" rel="stylesheet" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .container{
                background-color: white;
                padding: 30px 16px;
            }
        </style>
    </head>
    <body>
        <!-- navbar section -->
        <section class="navbar">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Barber Appointment</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact</a>
                            </li>


                        </ul>


                    </div>
                </div>
            </nav>
        </section>

        <!-- write your code here -->
        <!-- Barber list   -->
        <section class="listOfShops">
            <h3>Barbershops</h3>
            <hr>
            <!--<span>page <a href="">1</a> of 2</span>-->
            <span style="margin-right: 0%;margin-left: 80%;">Sort by:</span>
            <select  class="">sort by:
                <option value="1">Featured</option>
                <option value="2">Price: Low to High</option>
                <option value="2">Price: High to Low</option>
                <option value="2">Customer rating</option>
            </select>
            <br><br>
            
            <%
                for(int i = 0 ; i < shopList.size() ; i++)
                {
                    Shop s = shopList.get(i);
            %>
            <a href="ShopView.jsp?id=<%= i %>" style="text-decoration: none; color: black">
                <div class="cardbox">
                    <img src="<%= s.getCovImgPath() %>" alt="image">
                    <hr>
                    <div class="container">
                        <h3><%= s.getName() %></h3>
                        <a href="ShopView.jsp?id=<%= i %>">
                            <button class="btn btn-dark">View</button>
                        </a>
                    </div>
                </div>
            </a>
            
            <%
                }
            %>
            
            
<!--            <a href="shopview.html" style="text-decoration: none; color: black">
                <div class="cardbox">
                    <img src="images\BARBER_KING.jpeg" alt="image">
                    <hr>
                    <div class="container">
                        <h3>BARBER KING</h3>
                        <a href="shopview.html"><button class="btn btn-dark">View</button></a>
                    </div>
                </div>
            </a>
            <a href="shopview.html" style="text-decoration: none; color: black">
                <div class="cardbox">
                    <img src="images\FORTWORTH.png" alt="image"><hr>
                    <div class="container">
                        <h3>FORT WORTH</h3>
                        <a href="shopview.html"> <button class="btn btn-dark">View</button></a>
                    </div>
                </div>
            </a>

            <a href="shopview.html" style="text-decoration: none; color: black">
                <div class="cardbox">
                    <img src="images\BACK ALLEY.jpeg" alt="image"><hr>
                    <div class="container">
                        <h3>BACK ALLEY</h3>
                        <a href="shopview.html"><button class="btn btn-dark">View</button></a>
                    </div>
                </div>
            </a>
            <a href="shopview.html" style="text-decoration: none; color: black">
                <div class="cardbox">
                    <img src="images\BOARDROOM.jpeg" alt="image"><hr>
                    <div class="container">
                        <h3>BOARDROOM</h3>
                        <a href="shopview.html"><button class="btn btn-dark">View</button></a>
                    </div>
                </div>
            </a>
            <a href="shopview.html" style="text-decoration: none; color: black">
                <div class="cardbox">
                    <img src="images\CAPELLI'S.png" alt="image"><hr>
                    <div class="container">
                        <h3>CAPELLI'S BARBER</h3>
                        <a href="./shopview.html"><button class="btn btn-dark" onclick="getShopName()">View</button></a>
                    </div>
                </div>
            </a>
            <a href="shopview.html" style="text-decoration: none; color: black"><div class="cardbox">
                    <img src="images\BRUNO.png" alt="image"><hr>
                    <div class="container">
                        <h3>BRUNO'S BARBER</h3>
                        <a href="shopview.html"><button class="btn btn-dark">View</button></a>
                    </div>
                </div></a>
            <a href="shopview.html" style="text-decoration: none; color: black"><div class="cardbox">
                    <img src="images\GENTLEMAN.jpeg" alt="image"><hr>
                    <div class="container">
                        <h3>GENTLEMAN</h3>
                        <a href="shopview.html"><button class="btn btn-dark">View</button></a>
                    </div>
                </div></a>
            <a href="shopview.html" style="text-decoration: none; color: black"><div class="cardbox">
                    <img src="images\CROWS_NEST.png" alt="image"><hr>
                    <div class="container">
                        <h3>CROWSNEST</h3>
                        <a href="shopview.html"><button class="btn btn-dark">View</button></a>
                    </div>
                </div></a>-->
        </section>
        <!-- footer section -->
        <footer>
            <span>Barber Appointment | contact us: <a href="#" style="text-decoration: none;color: #202020;">abc@gmail.com </a></span>
        </footer>
    </body>
</html>
