<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! Connection con=null;
Statement stmt=null;
ResultSet rs;
int k=0;
%>

<%
String str1=request.getParameter("uname");
String str2=request.getParameter("upass");
//out.println(str1);
try
{
Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	stmt=con.createStatement();
	rs=stmt.executeQuery("select * from userdata where username='"+str1+"'");
	
	while(rs.next())
	{
		if(rs.getString(1).equals(str1) && rs.getString(11).equals(str2))
		{
			%><jsp:forward page="login_homepg.jsp"/><%
					k=1;
		 }
	 
		}
	if(k==0)
	{
		
			 %><jsp:forward page="fail.html"/><%
		 
	}
}
		catch(Exception e){
		out.println(e);
	}
%>

</body>
</html>