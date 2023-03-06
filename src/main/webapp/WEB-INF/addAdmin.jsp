<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adminHome</title>
</head>
<body bgcolor ="bluegrey">

<H1>add a Admin : </H1>

<form action="/admin/insert" method = "POST">
	<!--  Admin ID: <input type="text" name ="aid" ></input><br>-->
	<!--name: <input type="text" name ="name" ></input><br>-->
	Username: <input type="text" name ="email"></input><br>
	password: <input type="text" name="password"></input><br>
<input type="submit" value="print"> 
 
</form>
</body>
</html>