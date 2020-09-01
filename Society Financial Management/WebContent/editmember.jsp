<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Edit Memeber Details</title>
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
</head>
<style>
body{
background-image:url("download-3.jpg");
background-size: cover;
background-attachment: fixed;


}
.content{
background: white;
width: 50%;
padding: 40px;
margin: 100px auto;
font-family: calibri;
}
p{
font-size: 25px;
color: black;
}
table{
width:800px;
margin:auto;
table-layout:fixed;
text-align:left;
margin-top:50px;
font-family:Arial;
border:5px black;
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
<%@page import="java.sql.*"%>
    <%
        String email=request.getParameter("email");
    %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><strong><h2>Edit Member Details</h2></strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
          </ul>
    <div class="dropdown">
  <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <%out.println(email);%>
  </button>
     </div>
  </div>
</nav>

<body>

    <%
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
			Statement st = conn.createStatement();
    	  ResultSet rs=st.executeQuery("select *from registration where email='"+email+"'");
    	  while(rs.next())
    	  {
    		%>
    		
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
    		
    		
    		
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
				<form class="login100-form validate-form" action="update.jsp" method="post">
					<span class="login100-form-title p-b-40">
						
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter email: ex@abc.xyz">
						<input class="input100" type="text" id="firstName" name="firstName" placeholder="First Name" value="<%=rs.getString("firstName")%>">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter email: ex@abc.xyz">
						<input class="input100" type="text" id="lastName" name="lastName" placeholder="Last Name" value="<%=rs.getString("lastName") %>">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<span class="btn-show-pass">
							<i class="fa fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="password" placeholder="Password" value="<%=rs.getString("password") %>">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16">
						<input class="input100" type="text" name="phno" placeholder="PhoneNumber" value="<%=rs.getString("phno") %>">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16">
						<input class="input100" type="text" name="flatno" placeholder="Flat Number" value="<%=rs.getString("flatno") %>">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16">
						<input class="input100" type="hidden" name="email" placeholder="Email" value="<%=rs.getString("email") %>">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Update
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

 <%
    	  }
        }
        catch(Exception e)
        {
            out.println(e);
        }  %>
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
</body>
</html>