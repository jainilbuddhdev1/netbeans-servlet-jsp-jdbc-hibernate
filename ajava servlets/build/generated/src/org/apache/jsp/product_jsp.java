package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

    String searchby = new String();
    String operator = new String();
    String value = new String();
    if(request.getParameter("searchby") != null)
    {
        searchby = request.getParameter("searchby");
        operator = request.getParameter("operator");
        value = request.getParameter("value");
        out.println(searchby);
        out.println(operator);
        out.println(value);
    }

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"product.jsp\" method=\"post\">\n");
      out.write("            <label>Search By:</label>\n");
      out.write("            <select name=\"searchby\">\n");
      out.write("                <option name=\"pid\">pid</option>\n");
      out.write("                <option name=\"name\">name</option>\n");
      out.write("                <option name=\"price\">price</option>\n");
      out.write("                <option name=\"stock\">stock</option>\n");
      out.write("                <option name=\"image\">image path</option>\n");
      out.write("            </select>\n");
      out.write("            <select name=\"operator\">\n");
      out.write("                <option name=\"eq\">=</option>\n");
      out.write("                <option name=\"ge\">>=</option>\n");
      out.write("                <option name=\"gt\">></option>\n");
      out.write("                <option name=\"le\"><=</option>\n");
      out.write("                <option name=\"lt\"><</option>\n");
      out.write("                <option name=\"like\">like</option>\n");
      out.write("            </select>\n");
      out.write("            <input type=\"text\" name=\"value\">\n");
      out.write("            <input type=\"submit\" value=\"Search\">\n");
      out.write("        </form>\n");
      out.write("        <a href=\"product.jsp\">Clear Filters</a>\n");
      out.write("        <br><br>\n");
      out.write("        <button onclick = location.href='product_manage.jsp?op=1'>Insert New Product</button>\n");
      out.write("        <br><br>\n");
      out.write("        <table border = 1>\n");
      out.write("            <tr>\n");
      out.write("                <th>pid</th>\n");
      out.write("                <th>name</th>\n");
      out.write("                <th>price</th>\n");
      out.write("                <th>stock</th>\n");
      out.write("                <th>image path</th>\n");
      out.write("                <th>Edit Product</th>\n");
      out.write("                <th>Delete Product</th>\n");
      out.write("            </tr>\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom","root","");
            Statement stmt = con.createStatement();
        
      out.write("\n");
      out.write("        ");

            if(request.getParameter("value") == null)
            {
                ResultSet rs = stmt.executeQuery("select * from product");
                
                int srno = 1;
                while(rs.next())
                {
                    out.println("<tr>");
                    int pid = rs.getInt(1);
                    out.println("<td>" + pid + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getInt(3) + "</td>");
                    out.println("<td>" + rs.getInt(4) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td align=center>" + "<a href = product_manage.jsp?op=2&pid="+ pid +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = product_manage.jsp?op=3&pid="+ pid +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
            else if(operator.equals("like"))
            {
                ResultSet rs = stmt.executeQuery("select * from product where " + searchby + " " + operator + " '%" + value + "%'   ");
                int srno = 1;
                while(rs.next())
                {
                    out.println("<tr>");
                    int pid = rs.getInt(1);
                    out.println("<td>" + pid + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getInt(3) + "</td>");
                    out.println("<td>" + rs.getInt(4) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td align=center>" + "<a href = product_manage.jsp?op=2&pid="+ pid +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = product_manage.jsp?op=3&pid="+ pid +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
            else
            {
                ResultSet rs = stmt.executeQuery("select * from product where " + searchby + operator + "'" + value + "'");
                int srno = 1;
                while(rs.next())
                {
                    out.println("<tr>");
                    int pid = rs.getInt(1);
                    out.println("<td>" + pid + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getInt(3) + "</td>");
                    out.println("<td>" + rs.getInt(4) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td align=center>" + "<a href = product_manage.jsp?op=2&pid="+ pid +">Edit</a>" + "</td>");
                    out.println("<td align=center> <a href = product_manage.jsp?op=3&pid="+ pid +">Delete</a> </td>");
                    out.println("</tr>");
                }
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
