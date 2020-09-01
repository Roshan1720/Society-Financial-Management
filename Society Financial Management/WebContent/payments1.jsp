<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Portal</title>
<link rel="stylesheet" href="paymentstyle.css">
</head>
<body>
<center>
<div class="app=container">
	<div class="top-box">
	<p><span class="left-icon">&#x2190;</span><h2>PAYMENT PROCESS</h2><span
	class="right-icon">&#xb7;&#xb7;&#xb7;</span></p>
	</div>
	<%@page import="java.sql.*" %>
	<%
	String date = ((new java.util.Date()).toLocaleString());
    String[] words=date.split("\\s");
    String month=words[0];
    int k=0;              //k=value of month
    if(month.equals("Jan"))
		k=4;                  
	if(month.equals("Feb"))
		k=5;
	if(month.equals("Mar"))
		k=6;
	if(month.equals("Apr"))
		k=7;
	if(month.equals("May"))
		k=8;
	if(month.equals("Jun"))
		k=9;
	if(month.equals("Jul"))
		k=10;
	if(month.equals("Aug"))
		k=11;
	if(month.equals("Sep"))
		k=12;
	if(month.equals("Oct"))
		k=13;
	if(month.equals("Nov"))
		k=14;
	if(month.equals("Dec"))
		k=15;
    String month1="";
    String day=words[1];
    day=day.substring(0,day.length()-1);
    char ch[] = day.toCharArray();
	int sum = 0;
	//get ascii value for zero
	int zeroAscii = (int)'0'; //removing (,)
	for (char c:ch) {
		int tmpAscii = (int)c;
		sum = (sum*10)+(tmpAscii-zeroAscii);
	}
	if(request.getParameter("value").equals("4"))
		month1="Jan";
	if(request.getParameter("value").equals("5"))
		month1="Feb";
	if(request.getParameter("value").equals("6"))
		month1="Mar";
	if(request.getParameter("value").equals("7"))
		month1="Apr";
	if(request.getParameter("value").equals("8"))
		month1="May";
	if(request.getParameter("value").equals("9"))
		month1="Jun";
	if(request.getParameter("value").equals("10"))
		month1="Jul";
	if(request.getParameter("value").equals("11"))
		month1="Aug";
	if(request.getParameter("value").equals("12"))
		month1="Sep";
	if(request.getParameter("value").equals("13"))
		month1="Oct";
	if(request.getParameter("value").equals("14"))
		month1="Nov";
	if(request.getParameter("value").equals("15"))
		month1="Dec";
	
	int flag=1;
	int v = Integer.parseInt(request.getParameter("value"));
	if(k>v)
		flag=0;
	if(k==v)
		flag=2;
		
    int money=0;
    if(flag==1)
    {%>
    <div class="middle-box">
	<h1>RS.3000/-</h1>
	<p></p>
	</div>
    <%money=3000;
    }
    else if(sum<=10&&flag==2){
	%>
	<div class="middle-box">
	<h1>RS.3000/-</h1>
	<p></p>
	</div>
	<% 
	money=3000;
    } else{ %>
	<div class="middle-box">
	<h1>RS.3000+100/-<span>(Due)</span></h1>
	<p></p>
	</div>
	
	<%
	money=3100;
	
    }%>
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
		 <%@page import="java.sql.*"%>
      <%
      String email=request.getParameter("email");
      String value=request.getParameter("value");
      %>
		<form action="Payments2.jsp">
		<input type="hidden" name="email" value="<%=email %>" required="required">
        <input type="hidden" name="value" value="<%=value %>" required="required">
        <input type="hidden" name="money" value="<%=money %>" required="required">
		<button type="submit" class="pay-btn">Pay Now</button>
		</form>
		</div>
	</div>
</div>
</center>

</body>
</html>