<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
div.ssr {
    width: 100%;
    border: 1px solid gray;
    background-color: blue;
      text-align: left;
}
div.ssr {
    width: 100%;
    border: 1px solid gray;
    background-color: blue;
      text-align: right;
}
div.rr {
    width: 100%;
    border: 1px solid gray;
    background-color: lightblue;
      text-align: left;
}
div.sr {
    width: 100%;
    border: 1px solid gray;
    background-color: yellow;
      text-align: right;
}
div.foot {
    width: 100%;
    border: 1px solid gray;
    background-color: yellow;
      text-align: left;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="grey">

<% String name=request.getParameter("uname");
%><input type="hidden" name="t1" value=<% out.println(name); %> ></div>
<div class="ssr">
 <center><font style="font-family:Algerian" color="white" size="9">WELCOME TO SKY-LANE</center></font>
<font size="5" color="red">
<div class="gg">
<a href="home.html"><img src="ee.png"  width="32" height="30" border="0"><font color="red" size="4">LOG OUT</font></a></text>
</div>
</div><div class="rr">
<form action="notification.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="NOTIFICATIONS!!" style="height:60px; width:120px"></form><br>
<form action="ss_search1.jsp">
<input type="hidden" name="uname"  size="20" value="<%out.print(name);%>">
<input type="submit" value="SEARCH YOUR FLIGHT"  style=" width:200px">


</form><br>



<form action="checkplanes.jsp">
<input type="hidden" name="uname"  size="20" value="<%out.print(name);%>">
<input type="submit" value="CHECK PLANES TACKING OFF FROM YOUR CITY" style=" width:500px">
</form>




</div>

<br>
<marquee><font color="blue">Welcome,<%
if(name==null)
{	%><jsp:forward page="login_error.html"/><%
	}	
else
{
	out.print(name);
}
%></font>
</marquee>



<font color="red" size="5">
<center>
<form action="search1.jsp">


<img src="airline-tickets.png"  width="72" height="70" border="0">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BOOK YOUR FLIGHT NOW!!" style="height:50px; width:300px">
</form>
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;

<form action="cancelticket.jsp">
<input type="hidden" name="uname"  size="20" value="<%out.print(name);%>">
<input type="submit" value="CANCEL YOUR TICKET!" style="height:50px; width:300px">
<img src="ss.png"  width="72" height="70" border="0">

</form><br>

<br>
<br>
</font></center>
<div class="foot">
<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="contact.html">  contact us</a></i></font></div>


</body>
</html>