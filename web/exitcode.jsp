<%@ page import ="java.sql.*" %>
<%
    
    
     String Id  = request.getParameter("id");   
   String carnumber = request.getParameter("fname");
    String slot  = request.getParameter("slot");    
    String date= request.getParameter("lname");
    String Description= request.getParameter("emailid");
   
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  carexi(Id,carnumber,slot,date,Description) values ('" +Id+ "','" +carnumber+ "','" + slot + "','" +date+ "','" +Description+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print(" Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='home.html'>back</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


