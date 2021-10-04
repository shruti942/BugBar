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
.header h1 {
  font-size: 40px;
  color:white;
  text-align:center;
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
<ul>   <li ><a href='Home.jsp'><span>Home</span></a></li>
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

<br>
<h4>
<form method="get">

<table ><tr><td>
Id</td><td><input type="number" name="Id" value="User Id"></td></tr><tr><td>
Project Name</td><td><input type="text" name="pname" value="name"></td></tr><tr><td>
Description</td><td><input type="text" name="desc" value="desc"></td></tr><tr><td>
Start Date</td><td><input type="date" id="start" name="date"
       value="20/02/2019"
 >      </td></tr><tr><td>
<input class="button1" type="submit" name="submit" value="submit">  
</td><td></td></tr>
</table>
</form>
<%
try{
	
	Connection con=conn.connect();
		
	int id =Integer.parseInt(request.getParameter("Id"));
	String pname=request.getParameter("pname");
	String desc=request.getParameter("desc");
	SimpleDateFormat d=new SimpleDateFormat("dd/MM/yyyy");
	String dte=request.getParameter("date");
	Date dt=d.parse(dte);
    java.sql.Date sqlDate = new java.sql.Date(dt.getTime());    

	
		 	PreparedStatement ps=con.prepareStatement("insert into bugproject values( ?,?,? ,?)");    
		 	ps.setInt(1, id);
			ps.setString(2, pname);
			ps.setString(3, desc);
			ps.setDate(4, sqlDate);
			int n =  ps.executeUpdate();
		 
}catch(Exception e)
{
	
}



%>
</body>
</html>
