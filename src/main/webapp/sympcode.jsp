<%@ page import="java.sql.*"%>
<%
try {
    // Retrieve parameters from the request
    String s1 = request.getParameter("s1");
    String s2 = request.getParameter("s2");
    String s3 = request.getParameter("s3");
    String drug = request.getParameter("drug");
    int doctorid = Integer.parseInt(request.getParameter("did"));

   
    Class.forName("oracle.jdbc.driver.OracleDriver");

    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "webdb", "webdb");

   
        PreparedStatement ps = con.prepareStatement("INSERT INTO symp1 VALUES (?, ?, ?, ?, ?)");

        ps.setString(1, s1);
        ps.setString(2, s2);
        ps.setString(3, s3);
        ps.setString(4, drug);
        ps.setInt(5, doctorid);

        // Execute the insertion
        int i = ps.executeUpdate();
        out.println("<h1><font color='green'>"+"Inserted successfully"+"</font></h1>");
    con.close();
} catch (Exception e) {
    // Provide more meaningful error handling
    out.println("An error occurred: " + e.getMessage());
} finally {
    // Optional: Close resources here if not closed earlier
}
%>
