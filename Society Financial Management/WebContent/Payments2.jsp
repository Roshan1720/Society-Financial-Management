<%@page import="java.sql.*" %>
<%
String date = ((new java.util.Date()).toLocaleString());
String[] words=date.split("\\s");
String month=words[0];//month=Jul
String month2=month;
String day=words[1];
day=day.substring(0,day.length()-1);
char ch[] = day.toCharArray();
int sum = 0;
//get ascii value for zero
int zeroAscii = (int)'0';
for (char c:ch) {
	int tmpAscii = (int)c;
	sum = (sum*10)+(tmpAscii-zeroAscii);
}
String email=request.getParameter("email");
String value=request.getParameter("value");
String accept=request.getParameter("money");
if(request.getParameter("value").equals("4"))
	month="Jan";
if(request.getParameter("value").equals("5"))
	month="Feb";
if(request.getParameter("value").equals("6"))
	month="Mar";
if(request.getParameter("value").equals("7"))
	month="Apr";
if(request.getParameter("value").equals("8"))
	month="May";
if(request.getParameter("value").equals("9"))
	month="Jun";
if(request.getParameter("value").equals("10"))
	month="Jul";
if(request.getParameter("value").equals("11"))
	month="Aug";
if(request.getParameter("value").equals("12"))
	month="Sep";
if(request.getParameter("value").equals("13"))
	month="Oct";
if(request.getParameter("value").equals("14"))
	month="Nov";
if(request.getParameter("value").equals("15"))
	month="Dec";

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st2=conn2.createStatement();
	st2.executeUpdate("insert into inbox values('"+email+"','"+accept+"','"+sum+"','"+month+"')");
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st=conn.createStatement();
	String sql="update payment set "+month+"='"+accept+"' where email='"+email+"'";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.executeUpdate();
	
	Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	Statement st1=conn1.createStatement();
	String sql1="update date set "+month+"='"+sum+"-"+month2+"' where email='"+email+"'";
	PreparedStatement ps1 = conn1.prepareStatement(sql1);
	ps1.executeUpdate();
	int i=ps.executeUpdate();
	if(i>0)
	        {
	            out.print("project added into database");
	            response.sendRedirect("payments3.jsp?email="+email+"");
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
