<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! Connection con=null;
Statement stmt=null;
ResultSet rs=null;
%>
<% 
try
{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	stmt=con.createStatement();
	String an=request.getParameter("aname");
	String ap=request.getParameter("apass");
	
	if(an.equals("root") && ap.equals("amit"))
	{
		%><jsp:forward page="adminhome.html"></jsp:forward><%
	}
	else
		out.print("doesnot match");

}catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>