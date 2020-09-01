<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="paymentstyle.css">
</head>
<body>
<center>
<div class="app=container">
	<div class="top-box">
	<p><span class="left-icon">&#x2190;</span><h2>PAYMENT PROCESS</h2><span
	class="right-icon">&#xb7;&#xb7;&#xb7;</span></p>
	</div>
	 <%@page import="java.sql.*"%>
	<%
	String email=request.getParameter("email");
    String cost=request.getParameter("cost");
    String month=request.getParameter("month");
    String item=request.getParameter("item");
	
	
    %>
	<div class="middle-box">
	<h1>RS.<%=cost %>/-</h1>
	<p></p>
	</div>
	
	
	<div class="bottom-box">
	<button type="button"class="payment-option-btn">Pay with 
	Google Pay</button>
	<button type="button" class="payment-option-btn">Pay with 
	Netbanking</button>
	</div>
	<div class="card+details">
	<p>Pay using credit or debit card</p>
	<div class="card-num-field-group"> 
	<label>Card Number</label><br>
	<input type="text" class="card-num-field" placeholder="xxxx-xxxx-xxxx-xxxx">
	</div>
	
	<div class="date-field-group">
	<label>Card Number</label><br>
	<input type="text" class="card-num-field" placeholder="xxxx-xxxx-xxxx-xxxx">
	</div>
	
	<div class="date-field-group">
	<label>Expiry Date</label><br>
	<input type="text" class="date-field" placeholder="mm">
	<input type="text" class="date-field" placeholder="yyyy">
	</div>
		<div class="cvv-field-group">
		<label>CVV</label><br>
		<input type="password" class="name-field" placeholder="****">
		</div>
		<div class="name-field-group"> 
		<label>Card Holder Name</label><br>
		<input type="text" class="name-field" placeholder="Full Name">
		</div>
		<div>
		
      <%
      %>
		<form action="userpay1.jsp">
		<input type="hidden" name="email" value="<%=email %>" required="required">
        <input type="hidden" name="cost" value="<%=cost %>" required="required">
        <input type="hidden" name="month" value="<%=month %>" required="required">
        <input type="hidden" name="item" value="<%=item %>" required="required">
		<button type="submit" class="pay-btn">Pay Now</button>
		</form>
		</div>
	</div>
</div>
</center>

</body>
</html>