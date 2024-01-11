
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body BGCOLOR="LIGHTGREEN">
        <table  border="2"  cellpadding="2" cellspacing="0" bgcolor="skyblue" width="40%">
      <tr><td><center><font size="+5" color="GREEN"> Delete Parking</center></td>
      </tr>
     
<hr size="10" color="lightgreen"></hr>

 <form action="d1.jsp">
<table BORDER="2" WIDTH="30$">
<tr>
<td>parkingId</td>
<td><input type="text" name="id"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Delete"/></td>
</tr>
</table>
    <hr color="purple" size="10" />
</form>
 
    <%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM parking WHERE parkingId="+id);
if(i>0){%>
	           <br>
	           <TABLE style="background-color: #E3E4FA;" 
                   WIDTH="30%" border="1">
                       <tr><th>Data Deleted successfully <a href='adminhome.jsp'> Home</a></th></tr>
		   </table>
              <%
    }
else
{
    out.println("Error occured");
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>