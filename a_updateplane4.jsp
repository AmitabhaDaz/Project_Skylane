<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
	s=con.createStatement();
	String c=request.getParameter("data");	
	String id=request.getParameter("id");	
	String d=request.getParameter("newid");	


	if(c.equals("company"))
	{
		out.println(id);
	ps=con.prepareStatement("update flight2 set company=? where flightno=?");
 		//ps.setString(1,id);
        ps.setString(1,d);
        ps.setString(2,id);
        
        
       int i=ps.executeUpdate();
   	if(i>0)
	{	%><jsp:forward page="a_updateplane4.html"></jsp:forward><%}
else
{
	%><jsp:forward page="fail_au.html"></jsp:forward><%
}
	}
	if(c.equals("source"))
	{
		out.println(id);
		ps=con.prepareStatement("update flight2 set source=? where flightno=?");
 		//ps.setString(1,id);
        ps.setString(1,d);
        ps.setString(2,id);
        
        
       int i=ps.executeUpdate();
   	if(i>0)
	{	%><jsp:forward page="a_updateplane4.html"></jsp:forward><%}
else
{
	%><jsp:forward page="fail_au.html"></jsp:forward><%
}
	}
	
	if(c.equals("destination"))
	{
		//out.println(id);
		ps=con.prepareStatement("update flight2 set destination=? where flightno=?");
 		//ps.setString(1,id);
        ps.setString(1,d);
        ps.setString(2,id);
        
        
       int i=ps.executeUpdate();
			if(i>0)
				{	%><jsp:forward page="a_updateplane4.html"></jsp:forward><%}
			else
			{
				%><jsp:forward page="fail_au.html"></jsp:forward><%
			}
	}
	
}catch(Exception e){
	out.println(e);
}%>
<a href="adminhome.html">BACK</a>


</body>
</html>