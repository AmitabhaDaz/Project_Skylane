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
String flightno,company,source,destination,day,a,b,c,d,e,f,g,h,i,j,name;
int l=0;
%>
<% 
try
{
	//String name=request.getParameter("uname");
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
name=request.getParameter("uname");
stmt=con.createStatement();
%><div class="ss"><br><center><font color="yellow" size="6">NOTIFICATIONS</font></center><br></div>
<div class="sss"><%
rs=stmt.executeQuery("select * from booking2 where username='"+name+"'");
%><table style="width:100%">
 <tr>
    <th>TICKET NUMBER</th>
    <th>FLIGHT NUMBER</th>
    <th>COMPANY</th>
	 <th>SOURCE</th>
	 	 <th>DESTINATION</th>
	 	 	 
	 	 	 	 <th>SEAT NUMBER</th>
	 	 	 	
	 	 
	 
	 </tr>
<%
while(rs.next())
{		l++;
	a=rs.getString(1);
	
	c=rs.getString(3);
	d=rs.getString(4);

	e=rs.getString(5);

	f=rs.getString(6);
	g=rs.getString(7);
	
	%><tr>
	    <th><% out.print(a); %></th>
	  
	    <th><%out.print(c); %></th>
		 <th><%out.print(d); %></th>
		 		 <th><%out.print(e); %></th>
		 		 		 		 <th><%out.print(f); %></th>
		 		 		 		 <th><%out.print(g); %></th>
		 		 		 		
		 		 
		 
	 </tr><%
	 
		
}

if(l==0)
{
	%>no ticks purchesed<%
}

%></table></div><%
}catch(Exception e)
{
	out.println(e);
}
%></div>
<br><br>
<div class="dd">
<form action="login_homepg.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK">
</form>
</div>

</body>
</html>