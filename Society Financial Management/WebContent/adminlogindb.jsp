<%@page import="java.sql.*"%>
    <%
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        session.setAttribute("email",email);
        String verified="Y";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
            Statement st=con.createStatement();
             String query="Select * from admin Where password='" + password+ "' and email='" +email + "'";
             ResultSet rs=st.executeQuery(query);
              while(rs.next())
               {
            	 session.setAttribute("email",email);
            	 String query1="Select * from admin Where password='" +password+ "' and email='" +email + "'";
                 ResultSet rs1=st.executeQuery(query1);
                 while(rs1.next())
                 {
                	 response.sendRedirect("adminhome.jsp?email="+email+"");
                 }
                }
               response.sendRedirect("adminlogin.html");
            %>
        <%}
        catch(Exception e)
        {
            out.println(e);
        }  %>

</body>