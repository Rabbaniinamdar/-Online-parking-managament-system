<%@ page import ="java.sql.*" %>
<%
    
    
     String CustomerId  = request.getParameter("id");   
   String fname = request.getParameter("fname");
    String lname  = request.getParameter("lname");    
    String emailid= request.getParameter("emailid");
    String password = request.getParameter("password");
     String contact = request.getParameter("contact");
         String address = request.getParameter("address");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  reg(CustomerId,fname,lname,emailid,password,contact,address) values ('" + CustomerId+ "','" + fname+ "','" + lname  + "','" + emailid+ "','" +password+ "','" + contact+ "','" +address+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print("Registration Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='login.jsp'>LOGIN</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


