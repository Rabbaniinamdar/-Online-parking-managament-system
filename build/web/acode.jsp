<%@ page import ="java.sql.*" %>
<%
    
    
     String Id  = request.getParameter("id");   
   String areaname = request.getParameter("fname");
    String slot  = request.getParameter("lname");    
    String date= request.getParameter("emailid");
   
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into checkavaa(Id,areaname,slot,date) values ('" +Id+ "','" +areaname+ "','" + slot + "','" +date+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print(" Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='adminhome.jsp'>back</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


