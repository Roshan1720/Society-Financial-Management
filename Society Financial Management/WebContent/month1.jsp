<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Monthly Report</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<style type="text/css">
body{
background-image:url("download-3.jpg");
background-size: cover;
background-attachment: fixed;
}

table{
width:800px;
margin:auto;
text-align:left;
margin-top:50px;
font-family:Arial;
color:#fff;
border: 5px black solid;
color:black;
}
</style>
</head>
<body>
 <%@page import="java.sql.*"%>
<%
String month=request.getParameter("month");

%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><strong><h2>Monthly Report</h2></strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="report.jsp"><strong>Current Month</strong><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <strong>Select your Month</strong>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="month1.jsp?month=Jan">January</a>
          <a class="dropdown-item" href="month1.jsp?month=Feb">February</a>
          <a class="dropdown-item" href="month1.jsp?month=Mar">March</a>
          <a class="dropdown-item" href="month1.jsp?month=Apr">April</a>
          <a class="dropdown-item" href="month1.jsp?month=May">May</a>
          <a class="dropdown-item" href="month1.jsp?month=Jun">June</a>
          <a class="dropdown-item" href="month1.jsp?month=Jul">July</a>
          <a class="dropdown-item" href="month1.jsp?month=Aug">August</a>
          <a class="dropdown-item" href="month1.jsp?month=Sep">September</a>
          <a class="dropdown-item" href="month1.jsp?month=Oct">October</a>
          <a class="dropdown-item" href="month1.jsp?month=Nov">November</a>
          <a class="dropdown-item" href="month1.jsp?month=Dec">December</a>
        </div>
      </li>
    </ul>
    <form action="adminhome.jsp" class="form-inline my-2 my-lg-0">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Back</button>
    </form>
  </div>
</nav>
<div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="1" text-align="center" margin-top="50px" class="table table-dark" style="width:50%">
      <thead>
        <tr>
         <th >User Name</th>
          <th>Flat Number</th>
          <th>Email</th>
          <th><%=month%></th>
        </tr>
      </thead>
    
      <tbody>
    <%
      
		try
      {
			int count=0;
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
			Statement st = conn.createStatement();
    	  ResultSet rs=st.executeQuery("select *from payment");
    	  while(rs.next())
    	  {
    		  if(rs.getString(month).equals("no")){
    			  
    		  }
    		  else{
    			  String num=rs.getString(month);
    			  int sum=Integer.parseInt(num);
    			  count=count+sum;
    			  %>
    		        <tr>
    		          <td><%=rs.getString("firstName") %></td>
    		          <td><%=rs.getString("flatno") %></td>
    		          <td><%=rs.getString("email") %></td>

    		          <td>Rs.<%=rs.getString(month)%>/-</td>
    		         
    		        </tr>
    		      </tbody>
    		      <%  
    		  }
    	  }
    	  %>
    	  <tr>
    	  <td>Total</td>
    	  <td></td>
    	  <td></td>
    	  <td>Rs.<%=count %>/-</td>
    	  </tr>
    	  <%
    
      }
      catch(Exception e)
      {}%>
      
    </table>
    <br>
    
  </div>
  
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>