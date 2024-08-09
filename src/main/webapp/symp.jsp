<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
    <head>
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>create Account</title>
        <style>
            body{
             background: url(img6.jpg); 
             background-size: cover;
            }
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
    
        <div class="login-form">
        <form action="sympcode.jsp" method="post">
          <header><h1>Enter Symptoms for Personalized Drug Recommendations</h1></header>  
            <div class="container">

                    <div class="form-group">
                      <label for="Symptom-1">Symptom-1</label>
                      <input type="text" class="form-control" placeholder="Enter your Symptom" name="s1">
                    </div>
                    
                    <div class="form-group">
                      <label for="Symptom-2">Symptom-2</label>
                      <input type="text" class="form-control" placeholder="Enter your Symptom" name="s2">
                    </div>
                    
                    <div class="form-group">
                      <label for="Symptom-3">Symptom-3</label>
                      <input type="text" class="form-control" placeholder="Enter your Symptom" name="s3">
                    </div>
                    
                    <div class="form-group">
                      <label for="drug">Drug</label>
                      <input type="text" class="form-control" placeholder="Enter your Drug" name="drug">
                    </div>
  
                    <div class="form-group">
                      <label for="did">Doctor ID</label>
                      <input type="text" class="form-control" placeholder="Enter doctor id" name="did">
                    </div>
                    
                    
                    
                    
                           
             <footer><input type="submit" value="Register" class="btn">&nbsp;&nbsp;&nbsp;
              <input type="reset" value="Reset" class="btn">
            </footer> </div> 
            </form> </div>            
    </body>
</html>
    