<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import="java.sql.*" %>
    
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
<body>
<div class="ss">
<font size="8">YOU ARE INTO THE BOOKING AREA</font>
<br>
</div>
<br><br><br>
<%!
Connection con;
PreparedStatement ps;
Statement s;
ResultSet rs;
%>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	s=con.createStatement();
	String newseat=request.getParameter("s1");	
	String fn=request.getParameter("fn");	
	String tcno=request.getParameter("tcno");	

	
	ps=con.prepareStatement("update flight2 set seats=? where flightno=?");
 		//ps.setString(1,id);
        ps.setString(1,newseat);
        ps.setString(2,fn);
        
        
       int i=ps.executeUpdate();
			if(i>0)
				{
				%><font color="blue" size="5"><center>YOUR TICKET NO IS:<% out.print(tcno);%>
				<form action="tck.jsp">
				<input type="hidden" name="tcno" value="<%out.print(tcno); %>">
				<input type="submit" value="PRINT TICKET"></center></font>
				</form>
				
				<%
				
				}
			else
			{
				 %><jsp:forward page="fail3.html"/><%
			}
	}
catch(Exception e){
	out.println(e);
}%>
</body>
</html>