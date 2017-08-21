<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
div.ss {
    width: 100%;
    border: 1px solid gray;
    background-color: blue;
    text-align: center;
    
}
div.sr {
    width: 100%;
    border: 1px solid gray;
    background-color: lightblue;
    text-align: right;
    
}
div.ssrr {
    width: 100%;
    border: 1px solid gray;
    background-color: lightblue;

    
}
div.srr {
    width: 100%;
    border: 1px solid gray;
    background-color: lightblue;
    text-align: center;
    
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="ss">
<font color="White" size="8">SEARCH RESULTS<br><br></font></div>
<div class="sr">
<font color="White" size="5"><a href="home.html">LOG OUT</a><br></font></div>

<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String name;
%>
<br>
<%
try
{	name=request.getParameter("uname");
	String source=request.getParameter("source");
	String destination=request.getParameter("destination");	
	String day=request.getParameter("day");	
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
stmt=con.createStatement();
rs=stmt.executeQuery("select * from flight2 where source='"+source+"' and destination='"+destination+"' and day='"+day+"'");
%>
ENTER THE FLIGHT NUMBER:
<form action="maketicket.jsp">
<input type="text" name="fn">
<input type="hidden" name="t1" value="<%out.print(name); %>">
<input type="submit" value="BOOK NOW">
</form>
<div class="ssrr">
<table style="width:100%">
  <tr>
    <th>Flight no</th>
    <th>Company</th> 
        <th>Day</th> 
       
    
  </tr><%
  
while(rs.next())
{	
		String flightno=rs.getString(1);
		String company=rs.getString(2);
		String dayy=rs.getString(6);

		%>
		<tr>
	    <th><% out.print(flightno);%></th>
	    <th><% out.println(company);%></th>
	    	    <th><% out.print(dayy);%></th>
	     
	  </tr>
<%	
}
}catch(Exception e)
{
	out.println(e);
}%></table></div>
<br><br>
<div class="srr">
<form action="search1.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK TO BOOKING PORTAL"><br></form>
<form action="login_homepg.jsp"><br>
<input type="submit" value="BACK TO MY LOGIN HOME PAGE">
<input type="hidden" name="uname" value="<%out.print(name); %>">
</form>
</div>
<footer><br><br>
<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="contact.html">  contact us</a></i></font></footer>
</body>
</html>