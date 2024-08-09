<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Information</title>
</head>
<body>
    <h1>
        <span style="color: green;">Welcome, <%= session.getAttribute("uname") %></span>
    </h1>
    
    <p>
        You are experiencing the following conditions: 
        <%= session.getAttribute("s1") %>, 
        <%= session.getAttribute("s2") %>, and 
        <%= session.getAttribute("s3") %>.
    </p>
    <p>
        The recommended medication for your conditions is <%= session.getAttribute("drug") %>.
    </p>
    
    <p>
        This medication has been prescribed by <%= session.getAttribute("dname") %>, a specialist in <%= session.getAttribute("specialty") %>.
        <%= session.getAttribute("dname") %> is a <%= session.getAttribute("qualifications") %> with <%= session.getAttribute("experience") %> years of experience.
    </p>

    <p>
        Contact details:<br>
        Phone: <%= session.getAttribute("phno") %><br>
        Email: <%= session.getAttribute("email") %><br>
        Address: <%= session.getAttribute("address") %>
    </p>
</body>
</html>
