<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phno = request.getParameter("phno");
String flatno = request.getParameter("flatno");
String members = request.getParameter("members");
String parking = request.getParameter("parking");
String accept = "unaccept";
String no = "no";
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sfmdb","root","roshan1720");
	PreparedStatement ps = conn.prepareStatement("insert into registration(firstName, lastName, gender, email, password, phno,flatno,members,parking,accept) values(?,?,?,?,?,?,?,?,?,?);");
    ps.setString(1,firstName);
    ps.setString(2,lastName);
    ps.setString(3,gender);
    ps.setString(4,email);
    ps.setString(5,password);
    ps.setString(6,phno);
    ps.setString(7,flatno);
    ps.setString(8,members);
    ps.setString(9,parking);
    ps.setString(10,accept);
    int x = ps.executeUpdate();
    if(x>0){
    	response.sendRedirect("Login!!.html");
    }
    else{
    	out.println("Registration Failed...");
    }
	
}catch(Exception e){
	out.println(e);
}
%>