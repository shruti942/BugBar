<%@page import="appsdeveloperblog.encryption.verifypassword" %>
<%@page import="connection1.conn" %>
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
	align:center;
}
.button1:hover {
	background:linear-gradient(to bottom, #6c7c7c 5%, #768d87 100%);
	background-color:#6c7c7c;
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
<h4 align="center">Password
</th><th><input type="password" name="pwd"></h4></th></tr>
<tr><th>
<center> <input type="submit" value="Log-In" class="button1" name="Log In">
</center>
</th><th></th></tr>
<tr><th>new Register<a href="Register.jsp"><b>Here</b></a>
</th></tr>
</table>
</form>

<% 
	try
	{  
		String pwd=request.getParameter("pwd");
		int num =Integer.parseInt(request.getParameter("uid"));
		int count=0;
		 int i=0;
		Connection con=conn.connect();
		 PreparedStatement ps=con.prepareStatement( 
				 "select * from bugEmployee");   
		 ResultSet rs=ps.executeQuery();
		 out.println("connection established");
		 int flag=0;
			 while(rs.next())
		 	{
			if(rs.getInt(1)==num)
			{
				 String database=rs.getString(4);
					String salt=rs.getString(7);	 
				  flag=verifypassword.verify(pwd,database,salt);	
				
			}
			 if((flag==1)&&(rs.getInt(1)==num))
				{	i++;
					session.setAttribute("name",rs.getString(2));
					session.setAttribute("Email",rs.getString(3));
					session.setAttribute("designation",rs.getString(5));
					session.setAttribute("Id",rs.getInt(1));
					session.setAttribute("dipid",rs.getInt(6));
					response.sendRedirect("Profile.jsp");
				}
				else
				{
				//	response.sendRedirect("Login2.jsp");		
				 }
			} 
	}
	catch(Exception ee)
	{   
			out.println(ee);
	}

  %>
</body>
</html>