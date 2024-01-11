package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("!\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("    <title>admin</title>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("        .style1\n");
      out.write("        {\n");
      out.write("            width: 100%;\n");
      out.write("            font-weight: bold;\n");
      out.write("            border: 6px solid white;\n");
      out.write("            background-color: yellowgreen;\n");
      out.write("        }\n");
      out.write("        .style2\n");
      out.write("        {\n");
      out.write("            font-size: xx-large;\n");
      out.write("            color: white;\n");
      out.write("        }\n");
      out.write("        .style3\n");
      out.write("        {\n");
      out.write("            width: 60%;\n");
      out.write("            border: 4px solid PINK;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body background=\"images/car (1).gif\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <form NAME=\"HOME\" ACTION=\"HOMEPAGE\" METHOD=\"GET\">\n");
      out.write("    <div>\n");
      out.write("        \n");
      out.write("        <table cellpadding=\"10\"  cellspacing=\"0\"  width=\"100%\" class=\"style1\">\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"style2\">\n");
      out.write("               <center>Admin Contol</center></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("        <hr color=\"red\"  width=\"100%\" size=\"8px\"/>\n");
      out.write("    \n");
      out.write("   <table  align=\"left\" cellpadding=\"6\"  cellspacing=\"4\" width=\"100%\" bgcolor=\"skyblue\" >\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("    \n");
      out.write("            <td>\n");
      out.write("                <a href=\"customerdetails.jsp\">ViewUsers</a>\n");
      out.write("            </td>\n");
      out.write("    <td>\n");
      out.write("                <a href=\"ava.jsp\">Add Availability</a>\n");
      out.write("            </td>\n");
      out.write("            \n");
      out.write("             <td>\n");
      out.write("                <a href=\"pkde.jsp\">Parking Details</a>\n");
      out.write("            </td>\n");
      out.write("<td>\n");
      out.write("                <a href=\"feeds.jsp\">ViewFeedbacks</a>\n");
      out.write("            </td>        \n");
      out.write("\n");
      out.write("            <td>\n");
      out.write("                <a href=\"d1.jsp\">Delete Parking</a>\n");
      out.write("            </td>\n");
      out.write("    \n");
      out.write("            \n");
      out.write("        \n");
      out.write("            <td>\n");
      out.write("                <a href=\"home.html\">Logout</a>\n");
      out.write("            </td>\n");
      out.write("   </table><br>\n");
      out.write("    <img src=\"\">\n");
      out.write("    </table>\n");
      out.write("    </form>\n");
      out.write("</body>\n");
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
