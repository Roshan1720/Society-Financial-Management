<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<title>Yearly Spendings</title>
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
<%@page import="java.sql.*"%>
      
      <%
      String email=request.getParameter("email");


String date = ((new java.util.Date()).toLocaleString());
String[] words=date.split("\\s");
String month=words[0];

%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><strong><h2>Current Year Spendings</h2></strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    </ul>
    <form action="adminhome.jsp" class="form-inline my-2 my-lg-0">
    <input type="hidden" name="email" value="<%=email %>">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Back</button>
    </form>
  </div>
</nav>
</head>
<body>
<div class="tbl-header">
 <table cellpadding="0" cellspacing="0" border="1" text-align="center" margin-top="50px" class="table table-dark" style="width:80%">
  <thead>
    <tr>
      <th scope="col">Item Name</th>
      <th scope="col">Email</th>
      <th scope="col">Flat No</th>
      <th scope="col">Cost</th>
      <th scope="col">Month</th>
    </tr>
  </thead>
  </div>
      <tbody>
      <%@page import="java.sql.*"%>
      
      <%
		try
      {
			int count=0;
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
			Statement st = conn.createStatement();
    	  ResultSet rs=st.executeQuery("select *from expenses");
    	  
    	  while(rs.next())
    	  {
    		  
				  String num=rs.getString("cost");
    			  int sum=Integer.parseInt(num);
    			  
    			  if(rs.getString("payment").equals("yes"))
    			  {
    				  count=count+sum;
    			  %>
    		        <tr>
    		          <td><%=rs.getString("item") %></td>
    		          <td><%=rs.getString("email") %></td>
    		          <td><%=rs.getString("flatno") %></td>
    		          <td>Rs.<%=rs.getString("cost")%>/-</td>
    		          <td><%=rs.getString("month") %></td>
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
    		       
    		      <%  
    		
      }
      catch(Exception e)
      {}%>
      
    </table>
    <br>
      </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</html>