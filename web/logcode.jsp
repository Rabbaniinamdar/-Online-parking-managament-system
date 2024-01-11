<%@ page import ="java.sql.*" %>
<%
     String CustomerId  = request.getParameter("CustomerId");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from  reg where CustomerId  ='" + CustomerId  + "' and password='" +password+ "'");
    if (rs.next()) {
        session.setAttribute("customerid", CustomerId  );
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("home.html");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>