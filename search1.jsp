<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div.ssr {
    width: 110%;
    border: 1px solid gray;
    background-color: blue;
      text-align: center;
}
div.dd{
width: 120%;
background-color: cyan;
text-align: center;
}
div.sr {
    width: 100%;
    border: 1px solid gray;
    background-color: cyan;
      text-align: right;
}

div.fr {
    width: 115%;
    border: 1px solid gray;
    background-color: cyan;
      text-align: left;
}
</style>
</head>
<body>
<%! String name;
%>
<% name=request.getParameter("uname");
%>
 <div class="ssr">
<font style="font-family:Algerian" color="WHITE" size="6"><center>BOOKING PORTAL</center><br></font></div>
<font size="4" color="red"><marquee>Hi,<%out.print(name); %>.. You are in our booking portal..happy booking!!</marquee></font>
<div class="sr">
<font size="5" color="red" style="font-family:Broadway"><a href="home.html"><img src="ee.png"  width="42" height="30" border="0">LOG OUT</a><br><br></font></div>

</div><br>
<div class="ff">
<form action="search2.jsp">
<font size="5" color="black">
Source:
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Destination:
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Enter the date of journey:
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Enter the day of journey:<br>
<select name="source" size="1" style="font-family: Times New Roman">
<option value="kolkata">Kolkata</option>
<option value="delhi">Delhi</option>
<option value="mumbai">Mumbai</option>
<option value="chennai">Chennai</option>
<option value="bangalore">Bengalore</option>
<option value="indore">Indore</option>
<option value="vizak">Vishapattanam</option>
<option value="lucknow">Lucknow</option>
<option value="pune">Pune</option>
<option value="jaipur">Jaipur</option>
<option value="bhopal">Bhupal</option>
<option value="srinagar">Srinagar</option>
</select>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;


<select name="destination">
<option value="kolkata">Kolkata</option>
<option value="delhi">Delhi</option>
<option value="mumbai">Mumbai</option>
<option value="chennai">Chennai</option>
<option value="bangalore">Bengalore</option>
<option value="indore">Indore</option>
<option value="vizak">Vishapattanam</option>
<option value="lucknow">Lucknow</option>
<option value="pune">Pune</option>
<option value="jaipur">Jaipur</option>
<option value="bhopal">Bhupal</option>
<option value="srinagar">Srinagar</option>
</select>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;

<input type="date" name="date">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;

<select name="day">
<option value="daily">Daily</option>
<option value="monday">Monday</option>
<option value="tuesday">Tuesday</option>
<option value="wednesday">Wednesday</option>
<option value="thrusday">Thrusday</option>
<option value="friday">Friday</option>
<option value="saturday">Saturday</option>
<option value="sunday">Sunday</option>

</select>
<br><br>
<center>
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="search" size="8"/></font></center>
</form>
<center>
<img class="mySlides" src="f5.jpg" style="width:1050px;height:350px;"></center>
<font size="5" color="Aqua">


<br><br>
<div class="dd">
<form action="login_homepg.jsp">
<input type="hidden" name="uname" value="<%out.print(name); %>">
<input type="submit" value="BACK">
</form>
</div>

<div class="fr">
<font size="4" color="Chartreuse"><i>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="help.html">help</a>

 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="about.html">about</a>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="contact.html">  contact us</a></i></font></footer></div>
</div></body>
</html>