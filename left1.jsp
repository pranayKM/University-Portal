<%@ include file="connect.jsp" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
<TITLE></TITLE>
<style>
BODY {
	FONT-SIZE: 20pt;
	FONT-FAMILY:Arial;
	background-color: #00FF00;
}
A:visited {COLOR:linen; TEXT-DECORATION: none } 
A:active {COLOR:linen; TEXT-DECORATION: none } 
A:link {COLOR:linen; TEXT-DECORATION: none }
A:hover {COLOR:; TEXT-DECORATION: none font-size:10pt }
body,td,th {
	color: #0000FF;
}
.style15 {
	color: #FFFF00;
	font-size: 16px;
	font-weight: bold;
}
.style21 {color: #FFFFFF; font-size: 16px; font-weight: bold; }
.style23 {font-size: 14px}
.style25 {font-weight: bold}
.style27 {color: #0000FF}
.style28 {color: #FFFFFF}
.style29 {font-size: 16px}
.style30 {color: #0000FF; font-weight: bold; font-size: 18px; }
.style31 {
	font-size: 16pt;
	color: #ff0000;
}
</style>
<base target="_self">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></HEAD>

<BODY>
<%
String uname = (String)application.getAttribute("uname");
String suname = null;
	
             
           String query="select sname FROM student_details where suname = '"+uname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   if ( rs.next() )
	   {
		suname = rs.getString(1);
		System.out.println("User Full Name"+suname);
	   }
		
		
%>
<p><img src="Gallery/test.jpg" width="94" height="94">
<p class="style31">Welcome to Chicago State University <%= suname%>

<p><span class="style21"><a href="index.jsp" target="_parent">Logout</a></span><br>
</font>
<p align="justify">&nbsp;</p>
</P>
</BODY>
</HTML>