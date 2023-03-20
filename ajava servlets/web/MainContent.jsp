<%-- 
    Document   : MainContent
    Created on : 22 Feb, 2022, 6:12:17 PM
    Author     : jaini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Latest Products</h2>
                        <h2 class = "section-title">
                        <%
                            if(request.getParameter("msg") != null)
                            {
                                out.println(request.getParameter("msg"));
                                //out.println(p.get(cart.get(1)));
                            }
                        %>
                        </h2>
                        <div class="product-carousel">
                            <% 
                                for(int i = 0 ; i < p.size() ; i++){
                            %>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src= "<%= p.get(i).getImage() %>" alt="img not found">
                                    <div class="product-hover">
                                        <a href="AddToCart.jsp?PID=<%= p.get(i).getPid() %>" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="SingleProduct.jsp?PID=<%= p.get(i).getPid() %>" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <!--<form action = "SingleProduct.jsp" method = "Post">
                                    <input type = "submit" value = "See Details" class="view-details-link">
                                    <input type = "hidden" value = "<%= p.get(i).getPid() %>" name = "ProductId">
                                </form>
                                <a href = "SingleProduct.jsp?PID=<%= p.get(i).getPid() %>" class="view-details-link">View Details</a>-->
                                
                                <h2><%= p.get(i).getPname() %></h2>
                                
                                <div class="product-carousel-price">
                                    <ins>$<%= p.get(i).getPrice() %></ins> <del>$100.00</del>
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

