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
      text-align: center;
}
div.dd{
width: 120%;
background-color: yellow;
text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
<div class="ssr">
<font color="White" size="8"><Center>SEARCH RESULTS<br><br></Center></font></div>
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String name;
%>
<br><br>
<br>
<%
try
{	
 name=request.getParameter("uname");
	String source=request.getParameter("source");
	String destination=request.getParameter("destination");	
	String day=request.getParameter("day");	
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mb","root","manisha");
stmt=con.createStatement();
if(day.equals("daily"))
	{rs=stmt.executeQuery("select * from flight2 where source='"+source+"' and destination='"+destination+"'");
	}
else
{
rs=stmt.executeQuery("select * from flight2 where source='"+source+"' and destination='"+destination+"' and day='"+day+"'");
}
%>
<table style="width:100%">
 <tr> <font size="6" color="grey">
    <th>Flight no</th>
    <th>Company</th> 
        <th>Day</th> 
          </font>
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
	    	    <th><% out.print(day);%></th>
	    	   
	     
	  </tr>
<%	
}
}catch(Exception e)
{
	out.println(e);
}%>
<br>
<div class="dd">
<form action="ss_search1.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK TO SEARCH PORTAL	">
</form>
<br>
<form action="login_homepg.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK TO YOUR HOME PAGE">
</form>
</div>

</table><br><br><font color="red" size="6"><a href="home.html">BACK TO HOME</a></font><br><br>
<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="contact.html">  contact us</a></i></font></footer>
</body>
</html>