<%@page import="java.sql.*" %>
<%
String date = ((new java.util.Date()).toLocaleString());
String[] words=date.split("\\s");
String month=words[0];
String email=request.getParameter("email");
String cost=request.getParameter("cost");
String item=request.getParameter("item");
String flatno=request.getParameter("flatno");
String description=request.getParameter("description");
String payment="no";

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st=conn.createStatement();
	st.executeUpdate("insert into expenses values('"+item+"','"+email+"','"+flatno+"','"+cost+"','"+month+"','"+payment+"','"+description+"')");
	 response.sendRedirect("invoice.jsp?email="+email+"");
		}
catch(Exception e)
{
	out.println(e);
	}
%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
