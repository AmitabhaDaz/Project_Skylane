<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! 
Connection con=null;
ResultSet rs1=null;
ResultSet rs=null;
Statement stmt1=null;
Statement stmt=null;%>
<%
try
{
	
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
stmt1=con.createStatement();
stmt=con.createStatement();

String fn=request.getParameter("r1");
out.println("FLIGHT NO:- "+fn);


out.println("Details : "+fn+"\n");

rs=stmt.executeQuery("select * from flight where flightno='"+fn+"'");

while(rs.next()){

String comp=rs.getString(2);
String source=rs.getString(3);
String destination=rs.getString(4);
int	st=Integer.parseInt(rs.getString(5));
String date=rs.getString(6);
String month=rs.getString(7);
String price=rs.getString(8);

if(st<=30)
{
	
	
	int i=stmt1.executeUpdate("update flight set seats="+(++st)+" where flightno='"+fn+"'"); 
	if(i>0){
		%><br><br><%out.println("Congratulations! Your Tickets Have Been Booked Successfully! Please save a screenshot of this page!\n");
		%><br><br><%out.println("Flight No : "+fn+comp+"\n");
		%><br><br><%out.println("Source : "+source+"\n");
		%><br><br><%out.println("Destination : "+destination+"\n");
		%><br><br><%out.println("date : "+date+"\n");
		%><br><br><%out.println("month : "+month+"\n");
		%><br><br><%out.println("price : "+price+"\n");

		%><br><br><%out.println("\n");
		%><br><br><%out.println("\n");
		%><br><br><%out.println("HAPPY JOURNEY!");
	}
	}
	else
	{
	out.println("Failed to book");
	}
	}
}
	catch(Exception e){
	out.println(e);
	}%>
</body>
</html>