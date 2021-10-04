<%@page import="connection1.conn" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
ul {

  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #00ace6;
}

li {
  float: left;
}
.pos
{
 position: absolute;
  top: 130%;
  background-color:grey;	
}
.a
{
float:right;
padding:10px;
}
li a {
  display: block;
  color: white;
  padding: 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #669999;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 20px;
  text-align:center;
  background: #00ace6;
  color: white;
}
.clear {
    clear: both;
}
.links
{
 position: absolute;
 left:70%;
 font-size:15px;
	
}
.feature
{

 
 width:100%;
  background: #94b8b8;
  color: white;
 position: absolute;
  top: 110%;
 

}
.button1 {
	box-shadow:inset 0px 1px 3px 0px #91b8b3;
	background:linear-gradient(to bottom, #768d87 5%, #6c7c7c 100%);
	background-color:#768d87;
	border-radius:5px;
	border:1px solid #566963;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:11px 23px;
	text-decoration:none;
	text-shadow:0px -1px 0px #2b665e;
}
.button1:hover {
	background:linear-gradient(to bottom, #6c7c7c 5%, #768d87 100%);
	background-color:#6c7c7c;
}

.center {
  position: absolute;
  top: 60%;
  left: 50%;
  transform: translate(-50%, -50%);
  color:#00ace6;
	align:center;
	text-align:center;
}
.info {
    
    float: left;
    margin-top: 10px;
}
</style>
</head>
<body>
<div class="header">
<ul> <li><h1>BUG BAR</h1></li>
<li class="a">Home </li> 
<li class="a">Contact us</li>
<li class="a">About</li></ul>
</div><br>
<br>
<h1 style="text-align:center; color:#00ace6"><b>BUG MANAGEMENT SYSTEM</b></h1>
<h3 style="text-align:center; color:#00ace6">Next Step To Perfection.</h3>
 <div class="center">	<a href="Login2.jsp" class="button1" >Get Started</a>
</div>
<br>
<br>
<br>
<br>
<div style="float:left">
<img   style="position: absolute; left:00%; width:12%" src="insert.jpg"  alt"hi" style="width:13% ">
<p ><img  style="position: absolute; left:40%;top:68%;  width:15%"src="find.jpg"  alt"hi" style=></p>
<p ><img style="position: absolute; left:80%;  top:60%; width:15%"  src="track.jpg"  alt"hi" ></p>
<br>*
</div>
<div style="float:left">
<p style="text-align:center; position: absolute; left:00%; top:90%"><b>EASY TO EDIT</b>
<BR>You can easily edit <br>things like update,<br>delete, insert,add.</p>
<p style="text-align:center; position: absolute; left:40%; top:90%"><b>FIND BUGS</b><br>You can find bugs <br>which are registered<br>also check its's priority.</p>
<p style="text-align:center; position: absolute; left:80%; top:90%"><b>TRACK BUGS</b><br>You can track bugs<br>is it completed<br>or not</p>
</div>
<div class="feature">
<div class="info">

 <p>Copyright 2020 BUG BAR. All rights reserved.</p>
            <p><a href="#">Terms of Service</a> I <a href="#">Privacy</a></p>
            </div><div class="links">
            <a style="color:white;" href="#">Contact Us</a><br><br>
            <a style="color:white;" href="#">About Us</a><br><br>
            <a style="color:white;" href="#">Help</a> <br>

</div>

</div>
</body>
</html>