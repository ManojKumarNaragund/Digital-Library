
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Augment an Admin Panel Category Flat Bootstrap Responsive Web Template | Login :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Augment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="admin/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="admin/css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="admin/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="admin/css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="admin/js/jquery-1.10.2.min.js"></script>
<!--clock init-->
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style>
</head> 
<body>
<div align="center" class="style1">DIGITAL LIBRARY 
  <div class="login">
</div>
<h3 class="inner-tittle t-inner">Forget Password</h3>
<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String username=request.getParameter("username");
String h_a=request.getParameter("hinta");

ResultSet rs=s.stmt.executeQuery("select *from login where username='"+username+"' and hint_ans='"+h_a+"'");
if(rs.next())
{
%>
<form name="form1" method="post" action="login.jsp">
  <div align="center">
  <input type="text" value="<%=rs.getString(1)%>">
  
<input type="text" value="<%=rs.getString(2)%>">
  
</div>
  <div class="submit">
    <input type="submit"  value="Go to Login" >
  </div>
</form>
<%
}
else
{
%>
<script>
alert("Invalid Answer");
document.location="login.jsp";
</script>
<%
}
%>

