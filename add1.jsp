<%@page import ="java.util.*"%>
<%@page import ="java.math.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     

String att=request.getParameter("t2");
String tas=request.getParameter("t3");
String mob=request.getParameter("t4");
int eco=Integer.parseInt(request.getParameter("t5"));
int balencefee = Integer.parseInt(request.getParameter("t5"));
String uname=request.getParameter("t6");
String pass=request.getParameter("t7");
           
               

		
		try
		{
			 
			int s1=0,s2=0,s3=0,s4=0,s5=0;
			

		
		
		Statement st=connection.createStatement();
		String sql1 = "insert into student_details(sname,semail,mobile,sfee,sfeebal,suname,spass) values('"+att+"','"+tas+"','"+mob+"','"+eco+"','"+balencefee+"','"+uname+"','"+pass+"')";
		st.executeUpdate(sql1);
		out.print("DETAILS ADDED SUCCESSFULLY");

		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 