<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.ss{
width: 110%;
background-color: blue;
text-align: center;
}
div.sse{
width: 100%;
background-color: lightblue;
text-align: right;
}
div.dd{
width: 100%;
background-color: yellow;
text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<div class="ss">
<font style="font-family:Algerian" color="White" size="8"><Center>CANCEL YOUR TICKET<br><br></Center></font>
</div>
<div class="sse">
<font size="4" color="white" style="font-family:Broadway"><a href="home.html"><img src="ee.png"  width="42" height="30" border="0">LOG OUT</a><br><br></font>
</div>
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String name;
%>

<br>
<%
	name=request.getParameter("uname");
	

%>
ENTER THE TICKET NUMBER:
<form action="cancelticket2.jsp">
<input type="text" name="tn">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="CANCEL YOUR TICKET NOW">
</form>

<%	
%>
<br> <br>
<div class="dd">
<form action="login_homepg.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK">
</form>
</div>
 <br> <br> <br> <br> <br> <br> 
<br><br>
<footer>
<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<a href="contact.html">  contact us</a></i></font></footer>
</body>
</html>