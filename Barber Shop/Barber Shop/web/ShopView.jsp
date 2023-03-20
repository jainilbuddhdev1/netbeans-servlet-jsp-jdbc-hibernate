<%-- 
    Document   : ShopView
    Created on : 14 May, 2022, 7:15:59 PM
    Author     : New
--%>

<%@page import="java.util.HashMap"%>
<%@page import="Barber_shop.Shop" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HashMap<Integer , Shop> ShopList = Shop.getShops();
    
    int id = Integer.parseInt(request.getParameter("id"));
    Shop s = ShopList.get(id);
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Barber slot Booking</title>
        <!--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">-->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style-2.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400&display=swap"
            rel="stylesheet" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <script src="./script.js"></script>
        <!-- Add icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body onload="dis()">
        <!-- navbar section -->
<!--section-->
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
                      <a class="nav-link" aria-current="page" href="DisplayShop.jsp">Home</a>
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
        <!-- heading of shop -->
        <section class="headingLines">
            <h3 id="shopHeading" onload="displayName()"><%= s.getName() %></h3>
<!--            <span class="tagline">The Famous Barbers</span>-->
        </section>

        <!-- FIXME: -->
        <!-- images of shop -->
        <section class="col-md">
            <div class="image-slider">
                <div class="slide-item" style="display: block;">
                    <img src="images/new3.jpg" alt="IMAGE">
                </div>

                <div class="slide-item">
                    <img src="images/new4.jpg" alt="IMAGE">
                </div>

                <div class="slide-item">
                    <img src="images/new5.jpg" alt="IMAGE">
                </div>

                <div class="slide-item">
                    <img src="images/new6.jpg" alt="IMAGE">
                </div>

                <a class="prev" onclick="prevSlide()"> &lt;</a>
                <a class="next" onclick="nextSlide()"> &gt;</a>

                <!-- The dots/circles -->
                <div style="text-align:end;">
                    <span class="imgdot" onclick="currentSlide(1)"></span>
                    <span class="imgdot" onclick="currentSlide(2)"></span>
                    <span class="imgdot" onclick="currentSlide(3)"></span>
                    <span class="imgdot" onclick="currentSlide(4)"></span>
                </div>
            </div>
            <br>

        </section>

        <!-- <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="./images/new3.jpg" class="mblock w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="..." class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="..." class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div> -->

        <br>
        <!-- price and rating -->
        <section class="rupee">
            <h6>Rating: </h6>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>

            <br><br>
            <h6>Description:</h6>
            <span style="color: #202020bd;"><%= s.getDesc() %></span>
        </section>
        <section class="bookingTime">
            <form action="submit">
                <label for="service">Select your service:</label>
                <select id="ss" oninput="dis()">
                    <option value="Haircut">Haircut</option>
                    <option value="Shaving">Shaving</option>
                    <option value="Facial">Facial</option>
                    <option value="Massage">Massage</option>
                </select>
                <br><br>
                <label for="price">Price:</label>
                <input type="number" id="price" disabled>
                <br>
            </form>
        </section>
        <!-- book time -->
        <section class="bookingTime">
            <form action="BookingController.jsp">
                <label for="bookslot">Choose your appropriate Time:</label>
                <!--      <input type="datetime-local" name="bookslot" id="timebook">-->
                <select id="slotselect" name="slot">
                    <option id="slot1">5:30 PM TO 6:00 PM</option>
                    <option id="slot2">6:00 PM TO 6:30 PM</option>
                    <option id="slot3">6:30 PM TO 7:00 PM</option>
                    <option id="slot4">7:00 PM TO 7:30 PM</option>
                    <option id="slot5">7:30 PM TO 8:00 PM</option>
                </select>
                <input type="hidden" name="id" value="<%= id %>">
                <input type="submit" value="Book Slot">
                
<!--                <button type="button" onclick="checkAvailability()" id="checkbtn">Check Time</button>
                <br>
                <button type="button" id="paymentbtn" style="display: none;">Make Appointment</button>-->
              </form>
        </section>

        <!-- footer section -->
       <!--Appointment-->
       <footer>
        <span>Barber Appointment | contact us: <a href="#" style="text-decoration: none;color: #202020;">abc@gmail.com </a></span>
    </footer>
    </body>

</html>