<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.ssr {
    width: 100%;
    border: 1px solid gray;
    background-color: black;
      text-align: right;
}
div.dd{
width: 100%;
background-color: yellow;
text-align: center;
}
div.ddd{
width: 100%;
background-color: yellow;
text-align: right;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<div class="ssr">
<font color="White" size="8"><Center>Search planes from your city<br><br></Center></font></div>
<div class="ddd">
<font color="black" size="4"><a href="home.html">LOG OUT</a></font>
</div>
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String name,source;
%><%
name=request.getParameter("uname");
%>
<br><br>
<br><center>
SELECT THE CITY..<br><br>
<form action="checkplanes1.jsp">
<select name="source">
<option value="kolkata">Kolkata</option>
<option value="chennai">Chennai</option>
<option value="delhi">Delhi</option>
</select>
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="SEARCH">
<br>
</form>
</center>
<br><br><br><br>
<div class="dd">
<form action="login_homepg.jsp">
<br><br>
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK TO USER LOGIN PAGE	">
</form></div>
<br>


<br>
<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="contact.html">  contact us</a></i></font></footer>
</body>
</html>