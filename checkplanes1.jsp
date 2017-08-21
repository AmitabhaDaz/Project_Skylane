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
<body>
<div class="ssr">
<font color="White" size="8"><Center>SEARCH RESULTS<br><br></Center></font></div>
<div class="ddd">
<font color="black" size="4"><a href="home.html">LOG OUT</a></font>
</div>
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String name,source;
%>
<%
try
{	
 name=request.getParameter("uname");
 source=request.getParameter("source");

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from flight2 where source='"+source+"'");
%>
<table style="width:100%">
 <tr> <font size="6" color="grey">
    <th>Flight no</th>
    <th>Company</th> 
    <th>Destination</th>
        <th>Day</th> 
          </font>
  </tr><%
while(rs.next())
{	
		String flightno=rs.getString(1);
		String company=rs.getString(2);
		String destination=rs.getString(4);

		String day=rs.getString(6);
	
		%>
		<tr>
	    <th><% out.print(flightno);%></th>
	    <th><% out.println(company);%></th>
	    	    <th><% out.println(destination);%></th>
	    
	    	    <th><% out.print(day);%></th>
	    	   
	     
	  </tr>
<%	
}
}catch(Exception e)
{
	out.println(e);
}%></table>
<br><br>
<div class="dd">
<form action="checkplanes.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="CHECK AGAIN..">
</form>
<br></div>
<div class="dd">
<form action="login_homepg.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK TO USER LOGIN PAGE	">
</form>
<br></div>


<br><br><br>
<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="contact.html">  contact us</a></i></font></footer>
</body>
</html>