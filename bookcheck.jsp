<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%-- <%@page import="flight.Flight;" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">
	<%! Connection con=null;
Statement stmt=null;
/* Statement stmt1=null; */
ResultSet rs=null;
int i=0;
/* ResultSet rs1=null; */
RequestDispatcher rd;
%>
	<% 
try
{
	//int seats=application.getParameter("t3");
	
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
stmt=con.createStatement();

ArrayList<String[]> lst=new ArrayList<String[]>();
lst=(ArrayList<String[]>)request.getAttribute("list");

Iterator<String[]> itr = lst.iterator();

while(itr.hasNext()){
	String[] f=itr.next();
	
		String source=f[2];
		String destination=f[3];
		String fn=f[0];
		String comp=f[1];
		String dt=f[6];
		String mn=f[7];
		String price=f[8];

		
		rs=stmt.executeQuery("select * from flight where source='"+source+"' and destination='"+destination+"' and date='"+dt+"' and month='"+mn+"'");
		
			if(rs.next()){
			int st=rs.getInt(8); 
			application.setAttribute("st",st);
			application.setAttribute("source",source);
			application.setAttribute("destination",destination);
			application.setAttribute("fn",fn);
			application.setAttribute("dt",dt);
			application.setAttribute("mn",mn);
			application.setAttribute("price",price);

			if(st<30){
				%>
				<form action="bookchecker.jsp">
				Flight Details:<br>
				<%out.println("FlightNo : "+fn+" "+comp);
				out.println("Source : "+source);
				out.println("Destination : "+destination);
				out.println("Date : "+dt);
				out.println("Month : "+mn);
				out.println("Price : "+price);

				%>
				<input type="checkbox" name="r1" value=<%out.println(fn);%>>
				<input type="submit" value="Book"><br></form>
		<%	
			}
			
			
	
		}
	}

}catch(Exception e)
{
	//out.println(e);
}
%>
</body>
</html>