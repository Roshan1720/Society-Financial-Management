<%@page import="java.sql.*" %>
<%

String email=request.getParameter("email");
String cost=request.getParameter("cost");
String item=request.getParameter("item");
String month=request.getParameter("month");
String payment="yes";
try
{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st=conn.createStatement();
	String sql="update expenses set payment='"+payment+"' where email='"+email+"'and cost='"+cost+"' and item='"+item+"' and month='"+month+"'";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.executeUpdate();
	int i=ps.executeUpdate();
	if(i>0)
	        {
	            out.print("project added into database");
	            response.sendRedirect("expenses.jsp");
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
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
