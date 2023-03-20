package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.ce041.Product;
import java.sql.*;
import java.util.HashMap;
import com.ce041.Product;

public final class NewIndex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
    HashMap<Integer,Product> p = new HashMap<>();
    HashMap<Integer,Integer> cart = new HashMap<>();
    int totalAmount,totalProducts = 0;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/Header.jsp");
    _jspx_dependants.add("/Banner.jsp");
    _jspx_dependants.add("/MainContent.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
      out.write('\n');

    if(application.getAttribute("Products") == null){
        p = Product.getProducts();
        application.setAttribute("Products",p);
    }
    else{
        p = (HashMap<Integer,Product>) application.getAttribute("Products");
    }
    
    
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("\tustora by freshdesignweb.com\n");
      out.write("\tTwitter: https://twitter.com/freshdesignweb\n");
      out.write("\tURL: https://www.freshdesignweb.com/ustora/\n");
      out.write("-->\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>Ustora Demo</title>\n");
      out.write("    \n");
      out.write("    <!-- Google Fonts -->\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>\n");
      out.write("    \n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    \n");
      out.write("    <!-- Font Awesome -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("    \n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("\n");
      out.write("    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("   \n");
      out.write("    <div class=\"header-area\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <div class=\"user-menu\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-user\"></i> My Account</a></li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-heart\"></i> Wishlist</a></li>\n");
      out.write("                            <li><a href=\"cart.html\"><i class=\"fa fa-user\"></i> My Cart</a></li>\n");
      out.write("                            <li><a href=\"checkout.html\"><i class=\"fa fa-user\"></i> Checkout</a></li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-user\"></i> Login</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"header-right\">\n");
      out.write("                        <ul class=\"list-unstyled list-inline\">\n");
      out.write("                            <li class=\"dropdown dropdown-small\">\n");
      out.write("                                <a data-toggle=\"dropdown\" data-hover=\"dropdown\" class=\"dropdown-toggle\" href=\"#\"><span class=\"key\">currency :</span><span class=\"value\">USD </span><b class=\"caret\"></b></a>\n");
      out.write("                                <ul class=\"dropdown-menu\">\n");
      out.write("                                    <li><a href=\"#\">USD</a></li>\n");
      out.write("                                    <li><a href=\"#\">INR</a></li>\n");
      out.write("                                    <li><a href=\"#\">GBP</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li class=\"dropdown dropdown-small\">\n");
      out.write("                                <a data-toggle=\"dropdown\" data-hover=\"dropdown\" class=\"dropdown-toggle\" href=\"#\"><span class=\"key\">language :</span><span class=\"value\">English </span><b class=\"caret\"></b></a>\n");
      out.write("                                <ul class=\"dropdown-menu\">\n");
      out.write("                                    <li><a href=\"#\">English</a></li>\n");
      out.write("                                    <li><a href=\"#\">French</a></li>\n");
      out.write("                                    <li><a href=\"#\">German</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div> <!-- End header area -->\n");
      out.write("    \n");
      out.write("    <div class=\"site-branding-area\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <h1><a href=\"./\"><img src=\"img/logo.png\"></a></h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    <div class=\"shopping-item\">\n");
      out.write("                        <a href=\"ViewCart.jsp\">Cart - <span class=\"cart-amunt\">$");
      out.print( totalAmount );
      out.write("</span> <i class=\"fa fa-shopping-cart\"></i> <span class=\"product-count\">");
      out.print( totalProducts );
      out.write("</span></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div> <!-- End site branding area -->\n");
      out.write("    \n");
      out.write("    <div class=\"mainmenu-area\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </div> \n");
      out.write("                <div class=\"navbar-collapse collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"NewIndex.jsp\">Home</a></li>\n");
      out.write("                        <!--<li><a href=\"shop.html\">Shop page</a></li>\n");
      out.write("                        <li><a href=\"single-product.html\">Single product</a></li>-->\n");
      out.write("                        <li><a href=\"ViewCart.jsp\">Cart</a></li>\n");
      out.write("                        <li><a href=\"CheckOut.jsp\">Checkout</a></li>\n");
      out.write("                        <li><a href=\"#\">Category</a></li>\n");
      out.write("                        <li><a href=\"#\">Others</a></li>\n");
      out.write("                        <li><a href=\"#\">Contact</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>  \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div> <!-- End mainmenu area -->");
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"promo-area\">\n");
      out.write("        <div class=\"zigzag-bottom\"></div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"single-promo promo1\">\n");
      out.write("                        <i class=\"fa fa-refresh\"></i>\n");
      out.write("                        <p>30 Days return</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"single-promo promo2\">\n");
      out.write("                        <i class=\"fa fa-truck\"></i>\n");
      out.write("                        <p>Free shipping</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"single-promo promo3\">\n");
      out.write("                        <i class=\"fa fa-lock\"></i>\n");
      out.write("                        <p>Secure payments</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"single-promo promo4\">\n");
      out.write("                        <i class=\"fa fa-gift\"></i>\n");
      out.write("                        <p>New products</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div> <!-- End promo area -->");
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <div class=\"maincontent-area\">\n");
      out.write("        <div class=\"zigzag-bottom\"></div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"latest-product\">\n");
      out.write("                        <h2 class=\"section-title\">Latest Products</h2>\n");
      out.write("                        <h2 class = \"section-title\">\n");
      out.write("                        ");

                            if(request.getParameter("msg") != null)
                            {
                                out.println(request.getParameter("msg"));
                                //out.println(p.get(cart.get(1)));
                            }
                        
      out.write("\n");
      out.write("                        </h2>\n");
      out.write("                        <div class=\"product-carousel\">\n");
      out.write("                            ");
 
                                for(int i = 0 ; i < p.size() ; i++){
                            
      out.write("\n");
      out.write("                            <div class=\"single-product\">\n");
      out.write("                                <div class=\"product-f-image\">\n");
      out.write("                                    <img src= \"");
      out.print( p.get(i).getImage() );
      out.write("\" alt=\"img not found\">\n");
      out.write("                                    <div class=\"product-hover\">\n");
      out.write("                                        <a href=\"AddToCart.jsp?PID=");
      out.print( p.get(i).getPid() );
      out.write("\" class=\"add-to-cart-link\"><i class=\"fa fa-shopping-cart\"></i> Add to cart</a>\n");
      out.write("                                        <a href=\"SingleProduct.jsp?PID=");
      out.print( p.get(i).getPid() );
      out.write("\" class=\"view-details-link\"><i class=\"fa fa-link\"></i> See details</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <!--<form action = \"SingleProduct.jsp\" method = \"Post\">\n");
      out.write("                                    <input type = \"submit\" value = \"See Details\" class=\"view-details-link\">\n");
      out.write("                                    <input type = \"hidden\" value = \"");
      out.print( p.get(i).getPid() );
      out.write("\" name = \"ProductId\">\n");
      out.write("                                </form>\n");
      out.write("                                <a href = \"SingleProduct.jsp?PID=");
      out.print( p.get(i).getPid() );
      out.write("\" class=\"view-details-link\">View Details</a>-->\n");
      out.write("                                \n");
      out.write("                                <h2>");
      out.print( p.get(i).getPname() );
      out.write("</h2>\n");
      out.write("                                \n");
      out.write("                                <div class=\"product-carousel-price\">\n");
      out.write("                                    <ins>$");
      out.print( p.get(i).getPrice() );
      out.write("</ins> <del>$100.00</del>\n");
      out.write("                                </div> \n");
      out.write("                            </div>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div> <!-- End main content area -->\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("   \n");
      out.write("    <!-- Latest jQuery form server -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery.min.js\"></script>\n");
      out.write("    \n");
      out.write("    <!-- Bootstrap JS form CDN -->\n");
      out.write("    <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n");
      out.write("    \n");
      out.write("    <!-- jQuery sticky menu -->\n");
      out.write("    <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.sticky.js\"></script>\n");
      out.write("    \n");
      out.write("    <!-- jQuery easing -->\n");
      out.write("    <script src=\"js/jquery.easing.1.3.min.js\"></script>\n");
      out.write("    \n");
      out.write("    <!-- Main Script -->\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("    \n");
      out.write("    <!-- Slider -->\n");
      out.write("    <script type=\"text/javascript\" src=\"js/bxslider.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/script.slider.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
