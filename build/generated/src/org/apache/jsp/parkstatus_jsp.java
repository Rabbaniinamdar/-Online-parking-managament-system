package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class parkstatus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("  <body background=\"images/00studentparking-facebookJumbo.jpg\">\n");
      out.write("        <table  border=\"2\"  cellpadding=\"2\" cellspacing=\"0\" bgcolor=\"skyblue\" width=\"40%\">\n");
      out.write("      <tr><td><center><font size=\"+5\" color=\"GREEN\">View Parking Status</center></td>\n");
      out.write("      </tr>\n");
      out.write("      <a href=\"home.html\">BACK</a>\n");
      out.write("<hr size=\"10\" color=\"green\"></hr>\n");
      out.write("\n");
      out.write(" <form action=\"parkstatus.jsp\">\n");
      out.write("<table BORDER=\"2\" WIDTH=\"30$\">\n");
      out.write("<tr>\n");
      out.write("<td>CarNumber</td>\n");
      out.write("<td><input type=\"text\" name=\"txt1\"/></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td></td>\n");
      out.write("<td><input type=\"submit\" value=\"Search\"/></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("    <hr color=\"purple\" size=\"10\" />\n");
      out.write("</form>\n");
      out.write(" \n");

try {
    String id=request.getParameter("txt1");

String connectionURL = "jdbc:mysql://localhost:3306/parking";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

connection = DriverManager.getConnection(connectionURL, "root", "root");

statement = connection.createStatement();

String QueryString = "SELECT * from parking where carnumber='"+id+"'";
rs = statement.executeQuery(QueryString);

      out.write('\n');
      out.write('\n');

while (rs.next()) {

      out.write("\n");
      out.write("<table bordercolor=\"black\" border=\"5\"  bgcolor=\"lightyellow\"  cellpadding=\"0\"\n");
      out.write("       cellspacing=\"2\" WIDTH=\"40%\">\n");
      out.write("  <TR>\n");
      out.write("        <TD><font color=\"green\"></b><center>parkingId</center></td>\n");
      out.write("        <td><font color=\"green\"></b><center>ownername</center></td>\n");
      out.write("        <td><font color=\"green\"></b><center>contact</center></td>\n");
      out.write("        <TD><font color=\"green\"></b><center>carnumber</center></td>\n");
      out.write("<TD><font color=\"green\"></b><center>Slot</center></td>\n");
      out.write("         <td><font  color=\"green\"></b><center>date</center></td>\n");
      out.write("      <td><font  color=\"green\"></b><center>ExitParking</center></td>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </TR>\n");
      out.write("       \n");
      out.write("    <tr><td></b><center>");
      out.print(rs.getString(1));
      out.write("</center>\n");
      out.write("<td><center>");
      out.print(rs.getString(2));
      out.write("</center>\n");
      out.write(" <td> <center>  ");
      out.print(rs.getString(3));
      out.write("</center>\n");
      out.write("     <td></b><center>");
      out.print(rs.getString(4));
      out.write("</center>\n");
      out.write("<td></b><center>");
      out.print(rs.getString(5));
      out.write("</center>\n");
      out.write("     <td></b><center>");
      out.print(rs.getString(6));
      out.write("</center>\n");
      out.write("    <td>\n");
      out.write("              <center>  <a href=\"exit.jsp\">Exit Park</a></center>\n");
      out.write("            </td>\n");
      out.write("      \n");
      out.write("</tr>\n");
      out.write("\n");
 } 
      out.write('\n');

// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {

      out.write("\n");
      out.write("\n");
      out.write("<font size=\"+3\" color=\"red\"></b>\n");

out.println("Unable to connect to database.");
}

      out.write("\n");
      out.write("</TABLE><TABLE>\n");
      out.write("<TR>\n");
      out.write("<TD><FORM ACTION=\"welcome_to_database_query.jsp\" method=\"get\" >\n");
      out.write("</TD>\n");
      out.write("</TR>\n");
      out.write("</body>\n");
      out.write("</TABLE>\n");
      out.write("</font>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
