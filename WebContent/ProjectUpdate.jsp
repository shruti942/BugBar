<%@page import="connection1.conn" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="ISO-8859-1">
<style>
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

ul {
  margin: 0;
  background: #00ace6;
 
}
 li {
  margin: 0 5px;
  padding: 0 0 8px;
  float: left;
  position: relative;
  list-style: none;
}
a:link {
  color: white;
  text-decoration: none;
  display: block;
  padding: 8px 20px;
  margin: 0;
  border-radius: 5px;
 
}
#cssmenu a:hover {
  background:  #669999;
  color:  black;
}
#cssmenu .active a,
#cssmenu li:hover > a {
  color:  white;
}
#cssmenu ul ul li:hover a,
#cssmenu li:hover li a {
  background: none;
  border: none;
  color:  #669999;
}
#cssmenu ul ul a:hover {
  background:  #669999 url(images/overlay.png) repeat-x 0 -100px !important;
  color: #fff !important;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
 
}
#cssmenu li:hover > ul {
  display: block;
}
#cssmenu ul ul {
  z-index: 1000;
  display: none;
  margin: 0;
  padding: 0;
  width: 185px;
  position: absolute;
  top: 40px;
  left: 0;
  background: #ffffff url(images/overlay.png) repeat-x 0 0;
  border: solid 1px #b4b4b4;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.3);
}
#cssmenu ul ul li {
  float: none;
  margin: 0;
  padding: 3px;
}
#cssmenu ul ul a,
#cssmenu ul ul a:link {
  font-weight: normal;
 
}
#cssmenu ul:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
* html #cssmenu ul {
  height: 1%;
}

h1
{
align:center;
color:white;
  text-align: left;
  padding: 10px;
  text-decoration: none;
}
h3{
align:center;
color:white;
	margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #00ace6;
float:left;
}
table
{
color:#00ace6;
}
.ref
{
float:down;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 2px;
  text-align:center;
  background: #00ace6;
  color: white;
}

</style>
</head>
<body>

<div class="header">
  <h1>BUG BAR</h1>
  <p> <b>BUG MANAGEMENT SYSTEM</b></p>
</div>
<div id='cssmenu'>
<ul>
   <li ><a href='Home.jsp'><span>Home</span></a></li>
   <li ><a href='#'><span>Project</span></a>
      <ul>
         <li><a href="Project.jsp"><span>Add Project</span></a></li>
         <li><a href='UpdateBug.jsp'><span>Update Project</span></a></li>
         <li ><a href='Delete.jsp'><span>Delete Project</span></a></li>
      </ul>
   </li>
   <li><a href='#'><span>Bug</span></a>
   <ul>
   	    <li><a href='FindBug.jsp'><span>Find Bug</span></a></li>
     	 <li><a href='Reportbug.jsp'><span>Report Bug</span></a></li>
	    <li><a href='UpdateBug.jsp'><span>Update bug</span></a></li>
        <li><a href='Solvedbug.jsp'><span>Solved Bug</span></a></li>
   </ul>
   </li>
   <li ><a href='#'><span>Task</span></a>
   <ul>
  <li><a href='Completedtask.jsp'><span>Completed Task</span></a></li>
         <li><a href='Incompleted.jsp'><span>In completed Task</span></a></li>  </ul>
   </li>
   </ul>
<br>

<h4>
<form method="get">
<ul class="ref">
  <li><a href="UpdateProjectName.jsp">Project Name</a></li>
  <li><a href="UpdateProjectDesc.jsp">Project Description</a></li>
  <li><a href="UpdateProjectStart.jsp">Project Start</a></li>
</ul>
</form>
</h4>
</div>
</body>
</html>
