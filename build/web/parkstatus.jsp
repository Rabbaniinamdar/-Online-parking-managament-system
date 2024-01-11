

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <body background="images/00studentparking-facebookJumbo.jpg">
        <table  border="2"  cellpadding="2" cellspacing="0" bgcolor="skyblue" width="40%">
      <tr><td><center><font size="+5" color="GREEN">View Parking Status</center></td>
      </tr>
      <a href="home.html">BACK</a>
<hr size="10" color="green"></hr>

 <form action="parkstatus.jsp">
<table BORDER="2" WIDTH="30$">
<tr>
<td>CarNumber</td>
<td><input type="text" name="txt1"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Search"/></td>
</tr>
</table>
    <hr color="purple" size="10" />
</form>
 
<%
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
%>

<%
while (rs.next()) {
%>
<table bordercolor="black" border="5"  bgcolor="lightyellow"  cellpadding="0"
       cellspacing="2" WIDTH="40%">
  <TR>
        <TD><font color="green"></b><center>parkingId</center></td>
        <td><font color="green"></b><center>ownername</center></td>
        <td><font color="green"></b><center>contact</center></td>
        <TD><font color="green"></b><center>carnumber</center></td>
<TD><font color="green"></b><center>Slot</center></td>
         <td><font  color="green"></b><center>date</center></td>
      <td><font  color="green"></b><center>ExitParking</center></td>


        </TR>
       
    <tr><td></b><center><%=rs.getString(1)%></center>
<td><center><%=rs.getString(2)%></center>
 <td> <center>  <%=rs.getString(3)%></center>
     <td></b><center><%=rs.getString(4)%></center>
<td></b><center><%=rs.getString(5)%></center>
     <td></b><center><%=rs.getString(6)%></center>
    <td>
              <center>  <a href="exit.jsp">Exit Park</a></center>
            </td>
      
</tr>

<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>

<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE><TABLE>
<TR>
<TD><FORM ACTION="welcome_to_database_query.jsp" method="get" >
</TD>
</TR>
</body>
</TABLE>
</font>

</body>
</html>