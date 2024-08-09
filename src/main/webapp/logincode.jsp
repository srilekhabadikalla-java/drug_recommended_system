<%@ page import="java.sql.*" %>
<%
try{
String email=request.getParameter("email");
String password=request.getParameter("password");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","webdb","webdb");
PreparedStatement ps=con.prepareStatement("select * from doctor1 where email=? and password=?");
ps.setString(1,email);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if (rs.next())
{
	response.sendRedirect("symp.jsp");
}
else
{
	response.sendRedirect("index.jsp");
}
con.close();
}
catch(Exception e)
{
	out.println(e);
}

%>