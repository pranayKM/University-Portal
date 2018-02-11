<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     

            String groups=request.getParameter("t1");
			int fee=Integer.parseInt(request.getParameter("t2"));
           
               

		
		try
		{
			 
			int s1=0,s2=0,s3=0,s4=0,s5=0,feebal = 0,bal = 0;
			String mobile = null;
			

		/* PreparedStatement pst2=connection.prepareStatement("insert into IntArea values(?,?,?)");

		pst2.setString(1,aoi);
           pst2.setString(2,wname);

           pst2.setString(3,url);
		
		s2=pst2.executeUpdate();

		out.print("QUERY DETALS ADDED SUCCESSFULLY");*/
		Statement st1 = connection.createStatement();
		String sql2 = "select mobile,sfeebal from student_details where mobile = '"+groups+"'";
		ResultSet rs = st1.executeQuery(sql2);
		if(rs.next()){
			mobile = rs.getString(1);
			feebal = rs.getInt(2);
			bal = feebal - fee;
		
		Statement st=connection.createStatement();
		String sql3 = "UPDATE student_details SET sfeebal= '"+bal+"' WHERE mobile ='"+mobile+"' ;";
		String sql1 = "insert into fgroup (gname) values('"+groups+"')";
		st.executeUpdate(sql3);
		out.print("Thanks for Paying...");

		}
		else{
			out.print("Please Enter Valid Phone number");
		}
		}
		
		
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  

%>

</body>
</html> 