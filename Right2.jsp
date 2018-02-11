<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF6600;
	font-weight: bold;
	font-size: 24px;
}
-->
</style>

<body bgcolor=#FFFFFF >

<p align="center" class="style1">DETAILS </p>
<table width="1000" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td align="justify" bgcolor="#00FF00" width="200" valign="baseline" height="0"><div align="center"><b>Student Id</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Student Name</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Email</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Phone Number</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Total Fee</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0"><div align="center"><b>Balance Fee</b></div></td>
  

  </tr>





<%
	String uname = (String)application.getAttribute("uname");
    String mob = request.getParameter("t1");
	String s1,s2,s3,s4,s5,s6;

      	try 
	{
           
           String query="select sid,sname,semail,mobile,sfee,sfeebal FROM student_details where suname = '"+uname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s3);%>&nbsp;&nbsp;</td>&nbsp;
	<td align="center" bgcolor="#FFFFFF" width="185" valign="baseline" height="0"><%out.println(s4);%>&nbsp;&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s6);%>&nbsp;&nbsp;</td>
    
</tr>


<%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

<tr>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="180" valign="baseline" height="0">&nbsp;</td>
   
</tr>


</table>
</form>
</body>
</html>