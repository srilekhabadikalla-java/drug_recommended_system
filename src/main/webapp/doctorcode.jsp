<%@ page import="java.sql.*"%>
<%
try {
	long id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	String Specialty=request.getParameter("Specialty");
	String qualifications=request.getParameter("qualifications");
	String experience=request.getParameter("experience");
	String phno=request.getParameter("phno");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String address=request.getParameter("address");
	
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","webdb","webdb");
    PreparedStatement ps=con.prepareStatement("insert into doctor1 values(?,?,?,?,?,?,?,?,?)");
    ps.setLong(1, id);
    ps.setString(2, name);
    ps.setString(3,Specialty);
    ps.setString(4,qualifications);
    ps.setString(5, experience);
    ps.setString(6, phno);
    ps.setString(7,email);
    ps.setString(8,password);
    ps.setString(9,address);
    ps.executeUpdate();
    
    int i=ps.executeUpdate();
    
    con.close();
}
catch (SQLException e) {
    if (e.getErrorCode() == 1) {
        System.out.println("Duplicate entry detected. Please enter unique values.");
    } else {
        System.out.println("Database error: " + e.getMessage());
    }
}
finally{
	String name=request.getParameter("name");
	session.setAttribute("uname",name);
	response.sendRedirect("login.jsp");
}

%>
