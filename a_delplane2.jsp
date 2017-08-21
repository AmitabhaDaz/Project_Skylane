<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="w3-container w3-yellow">
  <h1><center><b>AIR-LANE flight booking System</b></center></h1>
  <font size="4" color="red"><marquee><p>Welcome to AIR-LANE booking System</p></marquee></font>
  <p align="right">
  <font color="red">
  
   </font></p>
 </div>
 <div class="w3-container w3-cyan">
<%!
Connection con;
PreparedStatement ps;
Statement s;
ResultSet rs;
%>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	String id=request.getParameter("f_id");
	s=con.createStatement();
	
			ps=con.prepareStatement("delete from flight2 where flightno=(?)");
        ps.setString(1,id);

       int i=ps.executeUpdate();
			if(i>0)
				{out.println("DELETED");}
			else
			{
				out.println("CANT DELETE");
			}
}catch(Exception e){
	out.println(e);
}%>
<a href="adminhome.html">BACK</a>
</div>
</form>
</body>
</html>