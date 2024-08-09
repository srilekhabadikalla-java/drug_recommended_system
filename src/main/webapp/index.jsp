
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
            a{
            text-align: center;
              text-decoration: none;
               font-size: 30px;
               color:blue;
            }
            h1{
            color:blue;
            text-align: center;
            font-size: 60px;
             padding-top: 125px;
            }
            h5{
            text-align: center;
             font-size: 30px;
             padding-left: 30px;
             padding: 30px;
            }
            .element{
            text-align:center;
            }
            .element ::before{
            content:'';
            display:block;
            position:absolute;
            top:0;
            bottom:0;
			height:100%;
			width:100%;
			background-image:url("drug.jpeg");
			background-repeat:no-repeat;
			background-size:cover;
			background-position:center;
			opacity:0.1;
            }             
</style>

</head>
<body>
<div class="element">
<h1>Drug Recommendation System In Medical Emergencies Using Machine Learning</h1>
<h5>
A drug recommendation system in medical emergencies uses machine learning to analyze patient data and symptoms,
 suggesting appropriate medications. It enhances decision-making, speeds up treatment, and improves patient outcomes.</h5>
<a href="about.jsp">About Our Website</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</body>
</html>