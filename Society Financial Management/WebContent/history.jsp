<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>History</title>
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
</head>
<body>

  <%@page import="java.sql.*"%>
      
      <%
      String email=request.getParameter("email");


String date = ((new java.util.Date()).toLocaleString());
String[] words=date.split("\\s");
String month=words[0];

%>



<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><strong><h2>Payment History and Defaulters List</h2></strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><strong>Current Month</strong><span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <strong>Select your Month</strong>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="month.jsp?month=Jan&email=<%=email%>">January</a>
          <a class="dropdown-item" href="month.jsp?month=Feb&email=<%=email%>">February</a>
          <a class="dropdown-item" href="month.jsp?month=Mar&email=<%=email%>">March</a>
          <a class="dropdown-item" href="month.jsp?month=Apr&email=<%=email%>">April</a>
          <a class="dropdown-item" href="month.jsp?month=May&email=<%=email%>">May</a>
          <a class="dropdown-item" href="month.jsp?month=Jun&email=<%=email%>">June</a>
          <a class="dropdown-item" href="month.jsp?month=Jul&email=<%=email%>">July</a>
          <a class="dropdown-item" href="month.jsp?month=Aug&email=<%=email%>">August</a>
          <a class="dropdown-item" href="month.jsp?month=Sep&email=<%=email%>">September</a>
          <a class="dropdown-item" href="month.jsp?month=Oct&email=<%=email%>">October</a>
          <a class="dropdown-item" href="month.jsp?month=Nov&email=<%=email%>">November</a>
          <a class="dropdown-item" href="month.jsp?month=Dec&email=<%=email%>">December</a>
        </div>
      </li>
    </ul>
    <div class="dropdown">
  <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <%out.println(email);%>
  </button>
     </div>
  </div>
</nav>

<div  id="menu-bar-container">

	<div id="menu-bar"></div>
    
    <div class="clear"></div>
    
    <div id="menu-bar-2-container">
    
    
            
    	<div id="menu-bar-2">
    	
                	<a href="userhome.jsp?email=<%=email%>">User Home</a>
                   
                   	<a href="payments.jsp?email=<%=email%>">Payments</a>
                   
                    <a href="history.jsp?email=<%=email%>">History</a>
                    
                     <a href="editmember.jsp?email=<%=email%>">Edit Member Details</a>
                    
                     <a href="invoice.jsp?email=<%=email%>">Generate Invoice</a>
                     
                     <a href="homepage.html">Logout</a> 
         </div>
    </div>
 	</div>

<div class="tbl-header">
<center>
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
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
			Statement st = conn.createStatement();
    	  ResultSet rs=st.executeQuery("select *from payment where email='"+email+"'");
    	  while(rs.next())
    	  {
    			  %>
    		        <tr>
    		          <td><%=rs.getString("firstName") %></td>
    		          <td><%=rs.getString("flatno") %></td>
    		          <td><%=rs.getString("email") %></td>
    		          <%
    		          		
    		        	  if(rs.getString(month).equals("no")){%>
    		        	  <td>Not Yet Paid</td>
    		          <% }else{
    		        	 
    		        	  %>
    		          <td>Rs.<%=rs.getString(month)%>/-</td>
    		          <%} %>
    		        </tr>
    		      </tbody>
    		      <%  
    		  }
    	  
    	  
    	  Connection conn1= DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
			Statement st1 = conn1.createStatement();
  	  ResultSet rs1=st1.executeQuery("select *from payment where email!='"+email+"'");
  	  while(rs1.next())
  	  {
  		 if(rs1.getString(month).equals("no")){
  			  %>
  		        <tr>
  		          <td><%=rs1.getString("firstName") %></td>
  		          <td><%=rs1.getString("flatno") %></td>
  		          <td><%=rs1.getString("email") %></td>
  		          <%
  		          		
  		        	  if(rs1.getString(month).equals("no")){%>
  		        	  <td>Not Yet Paid</td>
  		          <% } %>
  		          
  		        
  		        </tr>
  		      </tbody>
  		      <%  
  		  }
  	  }
    		  
      }
      catch(Exception e)
      {}%>
      
    </table>
    </center>
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