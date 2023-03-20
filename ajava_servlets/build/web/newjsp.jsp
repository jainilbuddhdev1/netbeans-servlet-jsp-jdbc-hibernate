<%-- 
    Document   : MainContent
    Created on : 22 Feb, 2022, 6:12:17 PM
    Author     : jaini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@include file="Header.jsp"%>
<%@include file="Banner.jsp" %>
<%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
            Statement stmt = con.createStatement();
        %>
        <%
        %>

<html>
    <head><title> New </title></head>
<body>
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Latest Products</h2>
                        <h2 class = "section-title">
                        </h2>
                        <div class="product-carousel">
                            <% 
                                ResultSet rs = stmt.executeQuery("select * from product");
                                int srno = 1;
                                while(rs.next())
                                {
                                    int pid = rs.getInt(1);
                            %>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src= "<%= rs.getString(5) %>" alt="img not found" height=195px width=243px>
                                    <div class="product-hover">
                                        <a href="AddToCart.jsp?PID=<%= pid %>" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="SingleProduct.jsp?PID=<%= pid %>" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <!--<form action = "SingleProduct.jsp" method = "Post">
                                    <input type = "submit" value = "See Details" class="view-details-link">
                                    <input type = "hidden" value = "<%= pid %>" name = "ProductId">
                                </form>
                                <a href = "SingleProduct.jsp?PID=<%= pid %>" class="view-details-link">View Details</a>-->
                                
                                <h2><%= rs.getString(2) %></h2>
                                
                                <div class="product-carousel-price">
                                    <ins>$<%= rs.getInt(3) %></ins> <del>$100.00</del>
                                </div> 
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
    
    
    
    
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="js/bxslider.min.js"></script>
    <script type="text/javascript" src="js/script.slider.js"></script>
  </body>
</html>