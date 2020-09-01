<%@page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String accept=request.getParameter("accept");
String firstName=request.getParameter("firstName");
String flatno=request.getParameter("flatno");
String no="no";
String space="no";


try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st2=connnn.createStatement();
	st2.executeUpdate("insert into date values('"+email+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"','"+space+"')");
	Connection connn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st1=connn.createStatement();
	st1.executeUpdate("insert into payment values('"+firstName+"','"+flatno+"','"+email+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"','"+no+"')");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st=conn.createStatement();
	
	String sql="update registration set accept='"+accept+"' where email='"+email+"'";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.executeUpdate();
	int i=ps.executeUpdate();
	if(i>0)
	        {
	            out.print("project added into database");
	            response.sendRedirect("request.jsp");
	        }
	else{

		out.print(email);
		
	}
	}
catch(Exception e)
{
	out.println(e);
	}
%>