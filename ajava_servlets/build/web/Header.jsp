<%-- 
    Document   : Header
    Created on : 22 Feb, 2022, 6:11:46 PM
    Author     : jaini
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ce041.Product"%>


<%
    HashMap<Integer,Product> p = new HashMap<>();
    boolean edited = true;
    if( application.getAttribute("edited") == null )
    {
        application.setAttribute("edited",edited);
    }
    else
    {
        edited = (boolean)application.getAttribute("edited");
    }
    out.println(edited);
%>

<%
    if(edited == true)
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from product");
        while(rs.next())
        {
            int pid = rs.getInt(1);
            String name = rs.getString(2);
            int price = rs.getInt(3);
            int stock = rs.getInt(4);
            String image = rs.getString(5);
            Product pnew = new Product(pid,name,price,stock,image);
            p.put(pid,pnew);
        }
        application.setAttribute("Products",p);
        application.setAttribute("edited",false);
        out.println("data has been fetched from database.");
    }
    else
    {
        p = (HashMap<Integer,Product>)  application.getAttribute("Products");
    }
%>


<%! 
    HashMap<Integer,Integer> cart = new HashMap<>();
    int totalAmount,totalProducts = 0;
%>


<%
    if(session.getAttribute("Cart") == null)
    {
        session.setAttribute("Cart",cart);
        session.setAttribute("totalAmount",totalAmount);
        session.setAttribute("totalProducts",totalProducts);
    }
    else
    {
        cart = (HashMap<Integer,Integer>) session.getAttribute("Cart");
        totalAmount =  (Integer) session.getAttribute("totalAmount");
        totalProducts = (Integer) session.getAttribute("totalProducts");
    }
%>


<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora Demo</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
                            <li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li>
                            <li><a href="cart.html"><i class="fa fa-user"></i> My Cart</a></li>
                            <li><a href="checkout.html"><i class="fa fa-user"></i> Checkout</a></li>
                            <li><a href="#"><i class="fa fa-user"></i> Login</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">English</a></li>
                                    <li><a href="#">French</a></li>
                                    <li><a href="#">German</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="ViewCart.jsp">Cart - <span class="cart-amunt">$<%= totalAmount %></span> <i class="fa fa-shopping-cart"></i> <span class="product-count"><%= totalProducts %></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="NewIndex.jsp">Home</a></li>
                        <!--<li><a href="shop.html">Shop page</a></li>
                        <li><a href="single-product.html">Single product</a></li>-->
                        <li><a href="ViewCart.jsp">Cart</a></li>
                        <li><a href="CheckOut.jsp">Checkout</a></li>
                        <li><a href="#">Category</a></li>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->