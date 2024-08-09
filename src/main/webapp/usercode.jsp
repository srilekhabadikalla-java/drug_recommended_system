<%@ page import="java.sql.*"%>
<%
try {
	String name=request.getParameter("name");
	String s1=request.getParameter("s1");
	String s2=request.getParameter("s2");
	String s3=request.getParameter("s3");
	
	
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","webdb","webdb");
    PreparedStatement ps=con.prepareStatement("select d.*,s.* from doctor1 d inner join symp1 s on d.doctorid=s.doctorid where s.s1=? and s.s2=? and s.s3=? ");
   
    ps.setString(1,s1);
    ps.setString(2,s2);
    ps.setString(3,s3);
    
    ps.executeUpdate();
    
    ResultSet rs=ps.executeQuery();
	
	 if (rs.next()) {
		 int doctorid=rs.getInt("doctorid");
		 String dname=rs.getString("name");
		 String specialty=rs.getString("specialty");
		 String qualifications=rs.getString("qualifications");
		 String experience=rs.getString("experience");
		 String phno=rs.getString("phno");
		 String email=rs.getString("email");
		 String password=rs.getString("password");
		 String address=rs.getString("address");
		 
		 String ss1=rs.getString("s1");
		 String ss2=rs.getString("s2");
		 String ss3=rs.getString("s3");
		 String drug=rs.getString("drug");
		 
		 
    	session.setAttribute("uname",name);
    	session.setAttribute("dname",dname);
    	session.setAttribute("specialty",specialty);
    	session.setAttribute("qualifications",qualifications);
    	session.setAttribute("experience",experience);
    	session.setAttribute("phno",phno);
    	session.setAttribute("email",email);
    	session.setAttribute("password",password);
    	
    	session.setAttribute("address",address);
    	session.setAttribute("s1",s1);
    	session.setAttribute("s2",s2);
    	session.setAttribute("s3",s3);
    	session.setAttribute("drug",drug);
    	
    	response.sendRedirect("result.jsp");

    }
    
    con.close();
}
catch (Exception e) {
	out.println(e);
   
}
%>


