<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action= "/admin/addRouteDetails">
<table>
	<tr>
	<td>Start Stop : </td>
	<td>
		<select name="startStop">
    		<!--<c:forEach items="${stopList}" var="stop">
        		<option value="${stop.id}">${stop.name}</option>
    		</c:forEach> -->
    		<option value="option1">option1</option>
    		<option value="option2">option2</option>
    		<option value="option3">option3</option>
    		<option value="option4">option4</option>
		</select>
	</td>
	</tr>
	
	<tr>
	<td>Start Stop : </td>
	<td>
		<select name="endStop">
    		<!--<c:forEach items="${stopList}" var="stop">
        		<option value="${stop.id}">${stop.name}</option>
    		</c:forEach> -->
    		<option value="option1">option1</option>
    		<option value="option2">option2</option>
    		<option value="option3">option3</option>
    		<option value="option4">option4</option>
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