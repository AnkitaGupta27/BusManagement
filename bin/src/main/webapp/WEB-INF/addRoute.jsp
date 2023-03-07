<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD ROUTE</title>
</head>
<body bgcolor= "bluegray">>
<H1> ADD ROUTE </H1>

<form action= "/admin/addRouteDetails">
<table align="CENTER">
	<tr>
	<td>Start Stop : </td>
	<td>
		<select name="startStop">
    		<c:forEach items="${list}" var="stop">
        		<option value="${stop.sid}">${stop.name}</option>
    		</c:forEach> 
    		<!-- <option value="option1">option1</option>
    		<option value="option2">option2</option>
    		<option value="option3">option3</option>
    		<option value="option4">option4</option>  -->
		</select>
	</td>
	</tr>
	
	<tr>
	<td>End Stop : </td>
	<td>
		<select name="endStop">
    		<c:forEach items="${list}" var="stop">
        		<option value="${stop.sid}">${stop.name}</option>
    		</c:forEach>
    		<!-- <option value="option1">option1</option>
    		<option value="option2">option2</option>
    		<option value="option3">option3</option>
    		<option value="option4">option4</option> -->
		</select>
	</td>
	<tr>
	
	<tr>
	<td></td>
	<td><input type ="submit" value = "add"/></td>
	</tr>
</table>
</form>

</body>
</html>