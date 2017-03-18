<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville" rel="stylesheet">
	<link href="css/ques.css" rel="stylesheet" type="text/css">

</head>
<body>
<body data-spy="scroll">
<%@ page import="Action.* , java.util.* " %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<img src="img/li.jpg" id="img1">
        <div class="box">
             <div class="line">
        		<a href="leaderboard.html" class="link" style="text-decoration: none;">LeaderBoard</a>
                <form action="logout"><button><span class="glyphicon glyphicon-off" title="LogOut"></span></button></form>
             </div>
            <h3>CODEAGEDDON</h3>
            <hr>
        	<h5>LEVEL <s:property value="#session.level" /></h5>
          	<div class="panel panel-info">
        		<div class="panel-heading" style="font-weight: bolder;">PROBLEM STATEMENT</div>
        		<div class="panel-body">Imagine a map of a swamped ground represented by a rectangular grid:<br>
@ + + + +<br>
+ + + X X<br>
+ X + + +<br>
+ + + X +<br>
+ X + + X<br>
+ + + + $<br>
where X depicts a pit (an impassable square, where person will be certainly drowned) while + are safe patches.
Ashley should travel from upper left corner (marked with @) to lower right corner (marked with $). He only can move by safe squares, and from each square he only can move in two directions - either right or down (as seen on a map). I.e. backward movements are forbidden - Ashley could not waste time due to the lack of food in his knapsack.
We are interested in how many different paths there exist from one corner to another under given rules.
Input data will contain number of rows and columns of the field in the first line - M and N.
Then the field itself will come in M lines, each of which contains N characters separated by spaces. Impassable squares are marked with X symbols.
Answer should contain the only number - the number of existing paths.
Give your answer for the following test case:-<br>
6 5
@ + + + +<br>
+ + + X X<br>
+ X + + +<br>
+ + + X +<br>
+ X + + X<br>
+ + + + $<br>
</div>
        		<div class="panel-footer">
        		     <label for="Answer"></label>
        		     <input type="text" placeholder="Write your answer here.....">
        		</div>
        	</div>
        	<a class="btn blue">SUBMIT</a>
        </div>
    <img src="img/li.jpg" id="img2">


</body>
</html>