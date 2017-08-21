<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
        <%@ page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
div.ss{
width: 110%;
background-color: RED;
text-align: center;
font-color: white;
font-size: 8;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body BGCOLOR="CYAN">
<div class="ss">
<font size="8">YOU ARE INTO THE BOOKING AREA</font>
<br>
</div>
<br><br><br>
<%!
Connection con;
PreparedStatement ps;
ResultSet rs,rs1;
Statement s,ss;
String flightno,company,source,destination,seats,un,fn;
Random ran=new Random();
%>
<%
try
{
	 un=request.getParameter("t1");
	fn=request.getParameter("fn");
	
	int x=ran.nextInt(1000)+10000;
	String ticketno=Integer.toString(x);
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	int l=0;
	
		s=con.createStatement();
		rs=s.executeQuery("select * from flight2 where flightno='"+fn+"'");
		while(rs.next())
		{
			flightno=rs.getString(1);
			company=rs.getString(2);
			source=rs.getString(3);
			destination=rs.getString(4);
			seats=rs.getString(5);
		}
		rs.close();
	
	int s2=Integer.parseInt(seats);
	s2++;
	String seatu=Integer.toString(s2);
	ps=con.prepareStatement("insert into booking2 values(?,?,?,?,?,?,?)");
	ps.setString(1,ticketno);
	ps.setString(2,un);
	ps.setString(3,fn);
	ps.setString(4,company);
	ps.setString(5,source);
	ps.setString(6,destination);
	ps.setString(7,seatu);



	int i=ps.executeUpdate();
	if(i>0)
	{
		%><center>HI, <%out.println(un); %> YOU HAVE BOOKED YOUR TICKET</center>
	<form action="showticket.jsp">
	<input type="hidden" name="s1" value="<%out.print(seatu); %>">
		<input type="hidden" name="fn" value="<%out.print(fn); %>">
			<input type="hidden" name="tcno" value="<%out.print(ticketno); %>">
	
	<CENTER><input type="submit" value="GENERATE TICKET"></CENTER>
	</form>
	
	<%
	}
	else
	{
		%>Cant create your account.. SORRY
		<jsp:forward page="NewFile.html"/><%
	}
	
}catch(Exception e){
	out.println(e);
}
%>

</body>
</html>