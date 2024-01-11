<%@ page import ="java.sql.*" %>
<%
    
    
     String slno = request.getParameter("id");   
     String customername= request.getParameter("companyname");
   String cnum = request.getParameter("fname");
    String rating  = request.getParameter("lname");    
    String Fdate= request.getParameter("address");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  feedback(slno,customername,cnum,rating,Fdate) values ('" +slno+ "','" +customername+ "','" +cnum+ "','" + rating  + "','" + Fdate+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print(" Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='home.html'>Back</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print(" UnSuccessfull");
    }
%>


