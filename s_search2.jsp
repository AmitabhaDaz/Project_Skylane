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
    background-color: blue;
      text-align: center;
}
div.ss {
    width: 100%;
    border: 1px solid gray;
    background-color: lightblue;
     
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="ssr">
<font color="White" size="8"><Center>SEARCH RESULTS<br><br></Center></font></div>
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
%>
<br><br>
<br>
<div class="ss">
<%
try
{
	String source=request.getParameter("source");
	String destination=request.getParameter("destination");	
	String day=request.getParameter("day");	
	String date=request.getParameter("date");	

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
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
}%></table></div><br>
<a href="s_search1.html"><font color="black" size="5">SEARCH AGAIN..</a></font>
<br><font color="red" size="5"><a href="home.html">BACK TO HOME</a></font><br><br><br><br><br>

<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="contact.html">  contact us</a></i></font></footer>
</body>
</html>