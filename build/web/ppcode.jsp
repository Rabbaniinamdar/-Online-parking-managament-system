<%@ page import ="java.sql.*" %>
<%
    
    
     String parkingId = request.getParameter("id");   
   String ownername = request.getParameter("fname");
    String contact  = request.getParameter("lname");   
       String carnumber  = request.getParameter("CarNumber");  
        String slot  = request.getParameter("slot"); 
    String date= request.getParameter("emailid");
   
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into parking(parkingId,ownername,contact,carnumber,slot,date) values ('" +parkingId+ "','" +ownername+ "','" + contact + "','" +carnumber+ "','" +slot+ "','" +date+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print("Your car is parked");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='home.html'>back</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


