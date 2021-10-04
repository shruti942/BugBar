<%@page import="connection1.conn" %>
<%@page import="appsdeveloperblog.encryption.protectpassword2" %>
<%@page import="javax.xml.ws.Response"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

table{
  margin:0px;
  border:2px solid #00ace6;
}body {
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
<br>
<br>
<table align="center">
<form method="get" >
<tr><th>
<h4 align="center">User ID: 
</th>
<th><input type="number" name="uid"></h4></th></tr>
<tr><th>
<h4 align="center">User Name
</th><th><input type="text" name="name"></h4></th></tr>
<tr><th>
<h4 align="center">Email
</th><th><input type="Email" name="mail"></h4></th></tr>
<tr><th>
<h4 align="center">Designation
</th><th><input type="text" name="des"></h4></th></tr>
<tr><th>
<h4 align="center">Department Id
</th><th><input type="number" name="desid"></h4></th></tr>
<tr><th>
<h4 align="center">Password
</th><th><input type="password" name="pwd"></h4></th></tr>
<tr><th>
<input class="button" align="center" type="submit" name="submit" valule=""></th><th></th></tr>
<tr><th>Already user Click<a href="Login2.jsp"><b>Here</b></a>
</th></tr>
</table>
</form>

<% 
try
	{
	String data;
		String pwd=request.getParameter("pwd");
		data=protectpassword2.passwordfun(pwd);
		pwd=data;
		String salt=protectpassword2.funforreturn();
		int num =Integer.parseInt(request.getParameter("uid"));
		String name=request.getParameter("name");
		String mail=request.getParameter("mail");
		String des=request.getParameter("des");
		int did =Integer.parseInt(request.getParameter("desid"));

		Connection con=conn.connect();
		 PreparedStatement ps=con.prepareStatement( 
				 "insert into bugEmployee values (?,?,?,?,?,?,?) ");	     
		 PreparedStatement ps1=con.prepareStatement( 
				 "alter user (?) account unlock ");

		 ps1.setInt(1,num);
		 ps.setString(7,salt);
		 ps.setInt(1,num);
		 ps.setString(2,name);
		 ps.setString(3,mail);
		 ps.setString(4,pwd);
		 ps.setString(5,des);
		 ps.setInt(6,did);
		int n =  ps.executeUpdate();
		
	}
	catch(Exception ee)
	{   
			out.println("error"+ee);}
%>
</body>
</html>