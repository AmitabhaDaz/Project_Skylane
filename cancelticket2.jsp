<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.ss {
    width: 110%;
    border: 1px solid gray;
    background-color: blue;
      text-align: center;
}
div.sss {
    width: 110%;
    border: 1px solid gray;
    background-color: lightblue;
      text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
Connection con;
PreparedStatement ps;
Statement s;
ResultSet rs;
String name;
%>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	s=con.createStatement();
	String tn=request.getParameter("tn");	
	String name=request.getParameter("uname");	

	
	
	ps=con.prepareStatement("DELETE FROM booking2 WHERE ticketno=(?)");
 		//ps.setString(1,id);
        ps.setString(1,tn);
       
        
        
       int i=ps.executeUpdate();
			if(i>0)
				{
				%><div class="ss">
				<center><h1><i><font color="white">TICKET CANCELLATION WINDOW</font></i></h1></center>
				</div><br><br><br><br><center><form action="cpage.jsp">
				<input type="hidden" name="tn" value="<%out.print(tn); %>">
				<div class="sss"><br><br>
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="CLICK TO GENERATE CANCEL SLIP"></div>
</form></center><br><br><br><br><br>
<div class="ss">
				<center><h1><i><font color="white">
				<a href="login_homepg.jsp">LOG OUT</a>
				</div>
			</form>
				</font></i></h1></center>

<%

				}
			else
			{     %>
				<div class="ss">
				<center><h1><i><font color="white">TICKET CANCELLATION WINDOW</font></i></h1></center>
				</div><br><br><br><br><center>
				<div class="sss"><br><br>

</center><br><br><br><br><br>
<div class="sss">
THE SYSTEM HAS ENCOUNTERED SOME PROBLEM.Possible reason could be<br>
* The ticket number you have entered is wrong.
<br><br>You must login again for security reasons
				<center><h1><i><font color="white">
				<a href="login.html">LOG OUT</a>
				</div>
			</form>
				</font></i></h1></center>
		<% 	}
	
	
}catch(Exception e){
	out.println(e);
}%>

</body>
</html>