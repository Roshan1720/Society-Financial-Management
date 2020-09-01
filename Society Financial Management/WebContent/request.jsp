<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="css/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="css/login/css/main.css">
<!--===============================================================================================-->
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
#menu-bar {   
	width:1000px;
    margin:0 auto;
    }
    
   h1 {               
    padding:0;
    margin:0;
    color:black;
    font-size: 40px;
    font-weight:normal;
    padding-top:10px;
    float:center;
    }
    
#menu-bar-2-container {
    background-color: #A91717;
    width: 100%;
    }
    
#menu-bar-2{
    width:1000px;
    margin:1 auto;
    height:40px;
  }
  
  #menu-bar-3 {
                
                border: 1px #BB4545 solid;
                float:right;
                width:250px;
                padding: 5px 10px 0 15x;
                margin: 2px 2px 0 0;
                
            }
  #menu-bar-3 a {
                
                color:white;
                text-decoration: none;
                font-size:20px;
                position:relative;
                top:-8px;
                
            }
            
  #menu-bar-3 a:hover {
                
                text-decoration: underline;
                
            }
  #menu-bar-2 a {
                color: white;
                text-decoration: none;
                padding: 0 10px;
                border-right: 1px solid #BB4545;
                font-size:14px;
                position: relative;
                top: 10px;
            }
#menu-bar-2 a:hover {
	text-decoration: underline; 
    }
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><strong><h2>User Requests</h2></strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
          </ul>
  </div>
</nav>
</head>
<body>

<div id="menu-bar-container">

	
    
    <div class="clear"></div>
    
    <div id="menu-bar-2-container">
            
    	<div id="menu-bar-2">
                
                    <a href="adminhome.jsp">Admin Home</a>
                    
                   <a href="request.jsp">Requests</a>
                    
                    <a href="inbox.jsp">Inbox</a>
                    
                    <a href="paymentconfirm.jsp">Payment Information</a>
                     
                     <a href="expenses.jsp">Miscellaneous Expenses</a>
                     
                     <a href="report.jsp">Monthly Report</a>
                     
                     <a href="salary.jsp">Salaries</a>
                    
                     <a href="homepage.html">Logout</a>
                </div>
            </div>
        </div>

<divclass="container>
<div class="tbl-header">
 <table cellpadding="0" cellspacing="0" border="1" text-align="center" margin-top="50px" class="table table-dark" style="width:80%">
  <thead>
  <tr>
  </tr>
    <tr>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Gender</th>
      <th scope="col">Email</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Flat Number</th>
      <th scope="col">Requests</th>
    </tr>
  </thead>
  </div>
      <tbody>
      <%@page import="java.sql.*"%>
      
      <%
		  
		try
      {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
			Statement st = conn.createStatement();
    	  ResultSet rs=st.executeQuery("select *from registration");
    	  
    	  while(rs.next())
    	  {
    		  if(rs.getString("accept").equals("unaccept")){
    			  %>
    		        <tr>
    		          <td><%=rs.getString("firstName") %></td>
    		          <td><%=rs.getString("lastName") %></td>
    		          <td><%=rs.getString("gender") %></td>
    		          <td><%=rs.getString("email") %></td>
    		          <td><%=rs.getString("phno") %></td>
    		          <td><%=rs.getString("flatno") %></td>
    		         	
    		         <td><form method="get" class="w3-bar-item w3-button tablink w3-yellow" action="accept.jsp">
      	            <input type="hidden" name="email" value="<%=rs.getString("email") %>" required="required">
      	            <input type="hidden" name="accept" value="accept" required="required">
      	            <input type="hidden" name="flatno" value="<%=rs.getString("flatno") %>" required="required">
      	            <input type="hidden" name="firstName" value="<%=rs.getString("firstName") %>" required="required">
      	            <input type="submit" class="w3-bar-item w3-button tablink w3-blue" name="submit" value="accept">
    		               
    		            </form></td>
    		          
    		        </tr>
    		      </tbody>
    		      <%  
    		  }
    		  
      }}
      catch(Exception e)
      {}%>
      
    </table>
    <br>
    
  </div>
  <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>