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
<%!
Connection con;
PreparedStatement ps;
Statement s;
ResultSet rs;
String d,id;
//HttpSession hs;
%>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	
	s=con.createStatement();
	 id=request.getParameter("id");	
	d=request.getParameter("data");
}catch(Exception e){
	out.println(e);
}
%><br><br><br>
ENTER THE NEW NAME OF THE <% out.print(d); %> :
<form action="a_updateplane4.jsp">
<input type="text" name="newid">
<input type="hidden" name="id" value=<%out.println(id);%>>
<input type="hidden" name="data" value=<%out.println(d);%>>
<input type="submit" name="cnge" value="SAVE">
</form>
<br><br><br>
<a href="adminhome.html">BACK</a>

</body>
</html>