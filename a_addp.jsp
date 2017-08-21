<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
      <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="w3-container w3-yellow">
  <h1><center><b>Flight booking System</b></center></h1>
  <font size="4" color="red"><marquee><p>Welcome to Pands's Flight booking System</p></marquee></font>
  <p align="right">
  <font color="red">
  <input type="submit" name="Search" value="Search for flights">
   </font></p>
 </div>



<div class="w3-container w3-cyan">
<%!
Connection con;
PreparedStatement ps;
		 
%>
<%
String flightno=request.getParameter("flightno");
String company=request.getParameter("company");
String source=request.getParameter("source");
String destination=request.getParameter("destination");
String s=request.getParameter("s");
String day=request.getParameter("day");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	ps=con.prepareStatement("insert into flight2 values(?,?,?,?,?,?)");
	ps.setString(1,flightno);
	ps.setString(2,company);
	ps.setString(3,source);
	ps.setString(4,destination);
	ps.setString(5,s);
	ps.setString(6,day);

	int i=ps.executeUpdate();
	if(i>0)
	{
		out.println("FLIGHT SAVED AND ADDED");
		
	}
	else
	{
		out.println("FLIGHT CANT BE SAVED..");
		
	}
	%>
	<br><br><br><br><br>
	<a href="a_addplane.html">INSERT ANOTHER FLIGHT</a>
	<br><br>
	<a href="adminhome.html">GO TO ADMIN HOME PAGE</a>
	<% 
}catch(Exception e){
	%>SOME SERVER PROBLEM HAS OCCURED
	<jsp:forward page="admin.html"/><%
}
%>
</div>
</body>
</html>