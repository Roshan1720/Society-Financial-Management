<%@page import="java.sql.*" %>
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phno = request.getParameter("phno");
String flatno = request.getParameter("flatno");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	String sql="update registration set firstName='"+firstName+"',lastName='"+lastName+"',password='"+password+"',phno='"+phno+"',flatno='"+flatno+"' where email='"+email+"'";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.executeUpdate();
	int i=ps.executeUpdate();
	if(i>0)
	        {
	            out.print("project added into database");
	            response.sendRedirect("userhome.jsp?email="+email+"");
	        }
	else{

	}
	}
catch(Exception e)
{
	out.println(e);
	}
%>