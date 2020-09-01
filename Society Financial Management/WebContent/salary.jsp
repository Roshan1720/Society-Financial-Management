<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salaries</title>
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
      <th scope="col">Photograph</th>
      <th scope="col">Working Staff</th>
      <th scope="col">Age</th>
      <th scope="col">Designation</th>
      <th scope="col">Gender</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Salary</th>
    </tr>
  </thead>
  </div>
      <tbody>
      <tr>
      <td>
      		<img src="..." alt="..." class="img-thumbnail">
      </td>
      
      <td>
      		Srinivas Rao
      </td>
      <td>
      		50
      </td>
      <td>
      		Security Guard
      </td>
      <td>
      		M
      </td>
      <td>
      		8996357845
      </td>
      <td>
      		15000
      </td>
      
      </tr>
      
      <tr>
      <td>
      		<img src="..." alt="..." class="img-thumbnail">
      </td>
      
      <td>
      		Ramulu
      </td>
      <td>
      		53
      </td>
      <td>
      		Security Guard
      </td>
      <td>
      		M
      </td>
      <td>
      		8999534845
      </td>
      <td>
      		15000
      </td>
      
      </tr>
      
      <tr>
      <td>
      		<img src="..." alt="..." class="img-thumbnail">
      </td>
      
      <td>
      		Lakshmi
      </td>
      <td>
      		42
      </td>
      <td>
      		Cleaner
      </td>
      <td>
      		F
      </td>
      <td>
      		9996357845
      </td>
      <td>
      		8000
      </td>
      
      </tr>
      
      <tr>
      <td>
      		<img src="..." alt="..." class="img-thumbnail">
      </td>
      
      <td>
      		Srikanth
      </td>
      <td>
      		47
      </td>
      <td>
      		Gardner
      </td>
      <td>
      		M
      </td>
      <td>
      		7866357845
      </td>
      <td>
      		10000
      </td>
      </tr>
      
      
      
      </tbody>
    </table>
    <br>
    
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>