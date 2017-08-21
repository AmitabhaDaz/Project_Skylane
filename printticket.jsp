<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
                <%@ page import="java.io.*" %>
        
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/pdf; charset=ISO-8859-1">
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
	int l=0;
	String ticketno=request.getParameter("tcno");
		s=con.createStatement();
		rs=s.executeQuery("SELECT * from booking2 where ticketno='"+ticketno+"'");
		while(rs.next())
		{
			String tcno=rs.getString(1);
			String username=rs.getString(2);
			String flightno=rs.getString(3);
			String company=rs.getString(4);
			String source=rs.getString(5);
			String destination=rs.getString(6);
			String seats=rs.getString(7);

			out.println("TICKET NO:"+tcno);
			out.println("USER NAME:"+username);
			out.println("Flight NO:"+flightno);
			out.println("Source:"+source);
			out.println("Destination:"+destination);
			out.println("Seat NO:"+seats);
			
			
		
		}
		
}catch(Exception e){
out.println(e);
}
		
%><a href="home.html">HOME PAGE</a>
</body>
</html>