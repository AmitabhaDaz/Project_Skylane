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
<%! Connection con;
Statement stmt;
ResultSet rs;
PreparedStatement ps;
RequestDispatcher rd;
%>
<% 
try
{
	String username=request.getParameter("uname");
	String address=request.getParameter("uaddress");
	String pin=request.getParameter("upin");
	String mail=request.getParameter("umail");
	String gender=request.getParameter("ugen");
	String landph=request.getParameter("uph");
	String mobile=request.getParameter("umob");
	String city=request.getParameter("c");
	String state=request.getParameter("s");
	String country=request.getParameter("co");

	String password=request.getParameter("upassword");
	
	
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","amit");
	stmt=con.createStatement();
	ps=con.prepareStatement("insert into userdata values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,username);
	ps.setString(2,address);
	ps.setString(3,pin);
	ps.setString(4,mail);
	ps.setString(5,gender);
	ps.setString(6,landph);
	ps.setString(7,mobile);
	ps.setString(8,city);
	ps.setString(9,state);
	ps.setString(10,country);
	ps.setString(11,password);
	
	
	

	int i=ps.executeUpdate();
	if(i>0){
		out.println("SUCCESSFULLY REGISTERD");
		%><a href="u_a.html">BACK TO HOME</a><% 
	}
	
	else{
		out.println("REGISTER NOT SUCCESSFUL");
		%><a href="home.html">BACK TO HOME</a><% 
	}
	}
	catch(Exception e){
		out.println(e);
	}
%>
</body>
</body>
</html>

