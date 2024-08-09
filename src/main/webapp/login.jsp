<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
            .container{
                background-color:white;
            }
            .btn{
            background-color:rgb(77, 127, 201) ;
            color: aliceblue;
            width: 30%;
            height: 40px; /* Adjust the height as needed */
            padding: 2px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            resize: none;
            padding-right: 30px;
            }
            label{
                color:rgb(77, 127, 201);
                font-weight: bold;
            }
            h1{
                font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                font-size: 25px;
                text-align: center;
            }
            
            .login-form {
            max-width: 800px;
            margin: 0 auto;
            background-color:transparent;
            padding: 30px;
            border-radius: 4px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            input {
            width: 100%;
            padding: 15px;
            border: 1px solid #131212;
            border-radius: 4px;
            box-sizing: border-box;
        }
        select
        {
          width: 100%;
            padding: 15px;
            border: 1px solid #131212;
            border-radius: 4px;
            box-sizing: border-box;

        }
        
        header,footer {
            background-color:floralwhite;
            color: #0b0a0ae4;
            text-align: center;
            padding: 10px;
        }
</style>
</head>
<body>
<h1><font color="blue">Welcome <%=session.getAttribute("uname")%></font></h1>
<div class="login-form">
        <form action="logincode.jsp" method="post">
         <div class="container">
         <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" class="form-control" name="email" placeholder="Enter your email" >
        </div>
        
        <div class="form-group">
            <label for="password">password</label>
            <input type="password" id="password" class="form-control" name="password" placeholder="Enter your password" >
        </div>
        
        <footer><input type="submit" value="Register" class="btn">&nbsp;&nbsp;&nbsp;
              <input type="reset" value="Reset" class="btn">
            </footer>
        </div>
        </form>
        </div>
     
</body>
</html>