<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<style type="text/css">
#menu-bar {   
	width:1000px;
    margin:0 auto;
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
    
   

.notification:hover {
  background: red;
}

.notification .badge {
  position: absolute;
  top: -10px;
  right: 0px;
  padding: 5px 5px;
  border-radius: 50%;
  background: white;
  color: black;
}
.container{
margin-top:50px;
}
</style>

<!-- Nav Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a class="navbar-brand" href="#"><h1>Society Financial Management</h1></a>
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
<body background = "apartments.jpg">
<%@page import="java.sql.*"%>
    <%
        String email=request.getParameter("email");
    	int count=0;
    	String y="unaccept";
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
			Statement st = conn.createStatement();
    	  ResultSet rs=st.executeQuery("select *from registration where accept='"+y+"'");
    	  while(rs.next())
    	  {
    		  count++;
    	  }
            %>
<div id="menu-bar-container">

	
    
    <div class="clear"></div>
    
    <div id="menu-bar-2-container">
            
    	<div id="menu-bar-2">
                
                    <a href="adminhome.jsp">Admin Home</a>
                    <%if(count==0){ %>
                   <a href="request.jsp">Requests</a>
                   <%}
                   else{ %> 
                   <a href="request.jsp" class="notification"><span>Requests</span><span class="badge"><%=count%></span></a>
                    <%} %>
                    
                    <a href="inbox.jsp">Inbox</a>
                    
                    <a href="paymentconfirm.jsp">Payment Information</a>
                     
                     <a href="expenses.jsp">Miscellaneous Expenses</a>
                     
                     <a href="report.jsp">Monthly Report</a>
                     
                     <a href="salary.jsp">Salaries</a>
                    
                     <a href="homepage.html">Logout</a>
                </div>
            </div>
        </div>
        
        <!-- Cards -->
<div class="container" id="about">
<div class="row" float="center">
            <div class="card" style="width: 20rem;" padding: 5px 5px;>
  <img src="https://mygate.com/blog/wp-content/uploads/2020/05/homepage1png-03.png"  alt="...">
  <div class="card-body">
    <a href="request.jsp"><h5 class="card-title"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-shield-lock-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M5.187 1.025C6.23.749 7.337.5 8 .5c.662 0 1.77.249 2.813.525a61.09 61.09 0 0 1 2.772.815c.528.168.926.623 1.003 1.184.573 4.197-.756 7.307-2.367 9.365a11.191 11.191 0 0 1-2.418 2.3 6.942 6.942 0 0 1-1.007.586c-.27.124-.558.225-.796.225s-.526-.101-.796-.225a6.908 6.908 0 0 1-1.007-.586 11.192 11.192 0 0 1-2.417-2.3C2.167 10.331.839 7.221 1.412 3.024A1.454 1.454 0 0 1 2.415 1.84a61.11 61.11 0 0 1 2.772-.815zm3.328 6.884a1.5 1.5 0 1 0-1.06-.011.5.5 0 0 0-.044.136l-.333 2a.5.5 0 0 0 .493.582h.835a.5.5 0 0 0 .493-.585l-.347-2a.5.5 0 0 0-.037-.122z"/>
</svg>  Requests</h5></a>
    <p class="card-text"><strong>Some quick example text to build on the card title and make up the bulk of the card's content.</strong></p>
    
  </div>
</div>

<div class="card" style="width: 20rem;">
  <img src="https://mygate.com/blog/wp-content/uploads/2019/05/verify-unexpected-visitors.svg" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="paymentconfirm.jsp""><h5 class="card-title"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-info-circle-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg>  Payment Information</h5></a>
    <p class="card-text"><strong>Some quick example text to build on the card title and make up the bulk of the card's content.</strong></p>
  </div>
</div>

<div class="card" style="width: 20rem;">
  <img src="https://mygate.com/blog/wp-content/uploads/2019/06/image-communication-management-create-polls-image.png" class="card-img-top" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="inbox.jsp"><h5 class="card-title"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-inbox-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.81 4.063A1.5 1.5 0 0 1 4.98 3.5h6.04a1.5 1.5 0 0 1 1.17.563l3.7 4.625a.5.5 0 0 1-.78.624l-3.7-4.624a.5.5 0 0 0-.39-.188H4.98a.5.5 0 0 0-.39.188L.89 9.312a.5.5 0 1 1-.78-.624l3.7-4.625z"/>
  <path fill-rule="evenodd" d="M.125 8.67A.5.5 0 0 1 .5 8.5h5A.5.5 0 0 1 6 9c0 .828.625 2 2 2s2-1.172 2-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 .496.562l-.39 3.124a1.5 1.5 0 0 1-1.489 1.314H1.883a1.5 1.5 0 0 1-1.489-1.314l-.39-3.124a.5.5 0 0 1 .121-.393z"/>
</svg>  Inbox</h5></a>
    <p class="card-text"><strong>At any point of time, the user can see how much amount has been paid, and who are all the defaulters for a given month.</strong></p> 
  </div>
</div>
</div>


<div class="container" id="about">
<div class="row" float="center">
<div class="card" style="width: 20rem;">
  <img src="https://mygate.com/blog/wp-content/uploads/2019/06/image-payments-module-complete-accounting-toolkit-image.png" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="expenses.jsp"><h5 class="card-title"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cash-stack" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M14 3H1a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1h-1z"/>
  <path fill-rule="evenodd" d="M15 5H1v8h14V5zM1 4a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1H1z"/>
  <path d="M13 5a2 2 0 0 0 2 2V5h-2zM3 5a2 2 0 0 1-2 2V5h2zm10 8a2 2 0 0 1 2-2v2h-2zM3 13a2 2 0 0 0-2-2v2h2zm7-4a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
</svg>  Miscellaneous Expenses</h5></a>
    <p class="card-text"><strong>Some quick example text to build on the card title and make up the bulk of the card's content.</strong></p>
  </div>
</div>

<div class="card" style="width: 20rem;">
  <img src="https://mygate.com/blog/wp-content/uploads/2019/07/Real_time_reports-27.png" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="report.jsp"><h5 class="card-title"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-newspaper" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 2A1.5 1.5 0 0 1 1.5.5h11A1.5 1.5 0 0 1 14 2v12a1.5 1.5 0 0 1-1.5 1.5h-11A1.5 1.5 0 0 1 0 14V2zm1.5-.5A.5.5 0 0 0 1 2v12a.5.5 0 0 0 .5.5h11a.5.5 0 0 0 .5-.5V2a.5.5 0 0 0-.5-.5h-11z"/>
  <path fill-rule="evenodd" d="M15.5 3a.5.5 0 0 1 .5.5V14a1.5 1.5 0 0 1-1.5 1.5h-3v-1h3a.5.5 0 0 0 .5-.5V3.5a.5.5 0 0 1 .5-.5z"/>
  <path d="M2 3h10v2H2V3zm0 3h4v3H2V6zm0 4h4v1H2v-1zm0 2h4v1H2v-1zm5-6h2v1H7V6zm3 0h2v1h-2V6zM7 8h2v1H7V8zm3 0h2v1h-2V8zm-3 2h2v1H7v-1zm3 0h2v1h-2v-1zm-3 2h2v1H7v-1zm3 0h2v1h-2v-1z"/>
</svg>  Monthly Report</h5></a>
    <p class="card-text"><strong>Some quick example text to build on the card title and make up the bulk of the card's content.</strong></p>
  </div>
</div>

<div class="card" style="width: 20rem;">
  <img src="https://mygate.com/blog/wp-content/uploads/2019/05/access-visitor.svg" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="salary.jsp"><h5 class="card-title"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope-open-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M8.941.435a2 2 0 0 0-1.882 0l-6 3.2A2 2 0 0 0 0 5.4v.313l6.709 3.933L8 8.928l1.291.717L16 5.715V5.4a2 2 0 0 0-1.059-1.765l-6-3.2zM16 6.873l-5.693 3.337L16 13.372v-6.5zm-.059 7.611L8 10.072.059 14.484A2 2 0 0 0 2 16h12a2 2 0 0 0 1.941-1.516zM0 13.373l5.693-3.163L0 6.873v6.5z"/>
</svg>  Salaries</h5></a>
    <p class="card-text"><strong>Some quick example text to build on the card title and make up the bulk of the card's content.</strong></p>
  </div>
</div>
</div>
</div>
</div>
         <%}
        catch(Exception e)
        {
            out.println(e);
        }  %>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  
</body>
</html>