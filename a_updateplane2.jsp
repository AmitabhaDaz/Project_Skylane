<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
div.ss {
    width: 110%;
    border: 1px solid gray;
    background-color: blue;
      text-align: center;
}
div.sss {
    width: 101%;
    border: 1px solid gray;
    background-color: lightblue;
   
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="ss">
  <font color="yellow"><h1><center><b>FlyLanes booking System</b></center></h1></font>
  <font size="4" color="white"><marquee><p>Admin area..</p></marquee></font>
   </div>
   <div class="sss">
   <p align="right">
  <font color="red">
  <a href="home.html"><img src="ee.png"  width="42" height="30" border="0">LOG OUT      .</a>
   </font></p>
   </div>
   <body>
<%String fn=request.getParameter("f_id"); %><br><br><br>
<form action="a_updateplane3.jsp">
Select what do you want to update:<select name="data">
  <option value="company">Company name</option>
  <option value="source">Source</option>
  <option value="destination">Destination</option>
  
</select><br>

<input type="hidden" name="id" value=<%out.println(fn);%>>
<input type="submit" value="UPDATE"><br><br>
</form></div>
The present data available for flights are:
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
RequestDispatcher rd;
String flightno,company,source,destination,day;

%><div class="w3-container w3-blue"><br>
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
stmt=con.createStatement();

rs=stmt.executeQuery("select * from flight2 where flightno='"+fn+"'" );
%><div class="sss">
<table style="width:100%">
 <tr>
    <th>Flight Number</th>
    <th>Company</th>
    <th>Source</th>
	 <th>Destination</th>
	 	 <th>Day</th>
	 </tr>
	
<%
while(rs.next())
{		
	flightno=rs.getString(1);
	company=rs.getString(2);
	source=rs.getString(3);
	destination=rs.getString(4);
	day=rs.getString(6);

	%><tr>
	    <th><% out.print(flightno); %></th>
	    <th><%out.print(company); %></th>
	    <th><%out.print(source); %></th>
		 <th><%out.print(destination); %></th>
		 		 <th><%out.print(day); %></th>
		 
	 </tr><%
	 
		
}
%></table>
</div>

<%

}catch(Exception e)
{
	out.println(e);
}
%></div>
<br><br>
<center><a href="a_updateplane.jsp">back..</a></center>
</body>
</html>