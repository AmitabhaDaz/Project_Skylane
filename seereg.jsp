<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="ss">
  <font color="yellow"><h1><center><b>FlyLanes booking System</b></center></h1></font>
  <font size="4" color="white"><marquee><p>See the people who have registered in FlyLane booking system</p></marquee></font>
   </div>
   <div class="sss">
   <p align="right">
  </div><p align="right">
  <a href="home.html"><img src="ee.png"  width="42" height="30" border="0">LOG OUT      .</a>
</p>

   
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String flightno,company,source,destination,day,a,b,c,d,e,f,g,h,i,j;
%>
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
stmt=con.createStatement();
%><div class="ss"><br><center><font color="yellow" size="6">USER DETAILS</font></center><br></div>
<div class="sss"><%
rs=stmt.executeQuery("select * from userdata");
%><table style="width:100%">
 <tr>
    <th>USER NAME</th>
    <th>ADDRESS</th>
    <th>PIN</th>
	 <th>E-MAIL</th>
	 	 <th>LAND PHONE</th>
	 	 	 	 <th>MOBILE NUMBER</th>
	 	 	 	 <th>CITY</th>
	 	 	 	 <th>STATE</th>
	 	 	 	 <th>COUNTRY</th>
	 	 
	 
	 </tr>
<%
while(rs.next())
{		
	a=rs.getString(1);
	b=rs.getString(2);
	c=rs.getString(3);
	d=rs.getString(4);

	f=rs.getString(4);

	g=rs.getString(7);
	h=rs.getString(8);
	i=rs.getString(9);
	j=rs.getString(10);

	%><tr>
	    <th><% out.print(a); %></th>
	    <th><%out.print(b); %></th>
	    <th><%out.print(c); %></th>
		 <th><%out.print(d); %></th>
		 		
		 		 		 		 <th><%out.print(f); %></th>
		 		 		 		 <th><%out.print(g); %></th>
		 		 		 		 <th><%out.print(h); %></th>
		 		 		 		 <th><%out.print(i); %></th>
		 		 		 		 <th><%out.print(j); %></th>
		 		 
		 
	 </tr><%
	 
		
}
%></table></div><%
}catch(Exception e)
{
	out.println(e);
}
%></div><br><br>
<center>
<a href="adminhome.html">BACK..</a></center>
</body>
</html>